Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D21D52E7BA
	for <lists+intel-gfx@lfdr.de>; Fri, 20 May 2022 10:37:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45AFB11AECF;
	Fri, 20 May 2022 08:37:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A5E111AE98;
 Fri, 20 May 2022 08:37:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653035865; x=1684571865;
 h=from:to:subject:date:message-id:mime-version;
 bh=3L0XlnBYbtjyJ/LvqYsqBsyX158ATapOfGK0sDjPMXI=;
 b=a9kPyMTLzAnIjsS/nba7HMFaaSnX6WIBc5qp/XyGqatSdzJUSbFdFs6+
 PckQraO5DpzGwZnqAAn+8R6Bgd9wVNLSjfhvOvdFYTr7wpJ5hrJyzZ8iv
 U1E9VENcR3AOYqHPTzp7DOsL52S9tZHbHuEdlwS7XKP26opWyWiGszg/1
 w1ZFLdQPAskSWc/s401RmNGeCTKiR5ws+RtB9DTE5EV6h3lGd5PUzRFUT
 elnG6aQtrTZnawXjgXWAZuGWoHf2aMQKrj0033xzRyflEdU5Z6F0v8HEn
 o8Lbuv2XgY5d12fb78xbOx1sOrMnY6paRabbeDuV5EFNl4E7WqdR9STV8 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10352"; a="272244662"
X-IronPort-AV: E=Sophos;i="5.91,238,1647327600"; 
 d="scan'208,217";a="272244662"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2022 01:37:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,238,1647327600"; 
 d="scan'208,217";a="701647001"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga004.jf.intel.com with ESMTP; 20 May 2022 01:37:44 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 20 May 2022 01:37:43 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 20 May 2022 01:37:43 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 20 May 2022 01:37:43 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 20 May 2022 01:37:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HQt1+0razkno/9pfg0V2JaSsJUzz6IMe/zoQBjIZ66X4DGMdpz4/t1dlq3rMdqP/O9U2yBiwK6bxtQcpsXef3yNFRlDIys4i1Rl0fxw9g6QSxvPZIj7t3vkXkMCEJRiFjNx5wR6ElNsxZ5o69zWkBOTJD9WStMVWZdb+TGScbnYJ2xeszBwb/8ICOBDykkcoLxrU7GcIOH0yStxqZ1vpPZ5TIi1DbxakLQW9w2BjFKsVot5dzh+zMmmGdqjJ/WlbCF3AHSkhTtDLYvyjJOraAwDIf/gyaDVzJ5hFdmh5SqnGb57jobV/rGDh8/BmiExI9AHhzBz6dM/z6ywoLt/fLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1YkM/jKxfRPFtsg8/BSczP0vrFGChJNiukUnLFPAz5c=;
 b=bPpWdQXrsu2VxsQ1pUDbe0kd8cp4c1MksNgNsH6QjW28UXocP/wzQgvpSmBzvjc0XCTTUCQ0ruFjD4Z5zCWxyBIB4xGGHkSjIy4kze2hxwL+jZNZuR97oz799vovBkYye3E8ghiywYFFSYJSAx14L3zCt5Zz5livbHdZ57Hd2hxywN34dow+eNGVLcD2WR4wSrPzqCc6dideWXH0l1fEDbfaa58MPrVocj5eS2wbh0qg1AWnJUDB+177qNc6LCA6NEr7kMI8hdVHgUvYPS52txTKVmPP6xm46t0WgtLkKEdngJzQ2+C94IGc7ber6wn2wvo1VBy6BNBRpoGXXtaq+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO6PR11MB5636.namprd11.prod.outlook.com (2603:10b6:5:357::21)
 by SA1PR11MB5825.namprd11.prod.outlook.com (2603:10b6:806:234::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5273.16; Fri, 20 May
 2022 08:37:40 +0000
Received: from CO6PR11MB5636.namprd11.prod.outlook.com
 ([fe80::6d3d:fad2:4245:8f56]) by CO6PR11MB5636.namprd11.prod.outlook.com
 ([fe80::6d3d:fad2:4245:8f56%9]) with mapi id 15.20.5273.017; Fri, 20 May 2022
 08:37:40 +0000
From: "Sarvela, Tomi P" <tomi.p.sarvela@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>
Thread-Topic: [CI] Maintenance: Intel-GFX-CI down on weekend 27.5.-29.5.
Thread-Index: AdhsJAqmcjlpoedeSuWToyYdzUCA/Q==
Date: Fri, 20 May 2022 08:37:40 +0000
Message-ID: <CO6PR11MB56360FE2C5052E4214390547DED39@CO6PR11MB5636.namprd11.prod.outlook.com>
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
x-ms-office365-filtering-correlation-id: cedc3178-380d-4000-5d90-08da3a3c006c
x-ms-traffictypediagnostic: SA1PR11MB5825:EE_
x-microsoft-antispam-prvs: <SA1PR11MB58257D9EA01C4F436F0BB99ADED39@SA1PR11MB5825.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: te6/y+PtXQlyGNetdyBnKt7WQCbP2jEBYe8mK/Xpt8ZsQ7b2n7JzBiUYTjOTaTJrtc48DA18OD8QeAxR6BH5RadquKfsmjHRcM+YctcCdEreYxWx/8o50mUlwXUIROWoSnfpkw3c54pxRLEJlQ7bB+k8T7Aw7dchKnASSkRI0dcsbRd2y9QrPhkKzzxVidyltydekATmetLz/CL382jX42OAeNGAgtvI2Ob0Axlc4iX6hOBmq81PIN2Fad1JpdZghBloScOxwXNK0UQFQ//U2vkQ8kKRZFX3MEOby5pGjqZU4qPB3wSSiVZo1mNjnp3H2lR/9YetRZBh9CW3peTxl+5iyCvu9RF8om+CpHubFdOGlFZsXRAzzfeVk+WEodJ3p/7W+XWngSyUt7/8T2BT/kFjkJReuBQjRjcfBqbHNlgHtSgzdMWpvb4TJR1MijiCW4kbWtTu3Xqh1SV1l2vQC0v58atbHDV2BbIvLtoIv23nPXAknJh5mS09Yrh4A5dFF96lscnf5odplYF1lVRVxoyVRlr3LsnKFcLEDCeiI/llfSw6mPFq6LA0Y/Xhgy+9vvcRMmXd8+sxdgcntl9nJT9il+0AXLekmcLBodFj92bNTfTXZR6Crz8beKBoLYcz9dEXlJ1ICUusRNZwGL5KFhNtGg9amFG8fVOWQnYY4aEbJsqk2Xr8KCDTl4FBbKVSDjDcavhLRDtdmp0yjf7+/g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5636.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(2906002)(508600001)(9686003)(55016003)(52536014)(8936002)(7696005)(71200400001)(82960400001)(4744005)(110136005)(5660300002)(33656002)(86362001)(316002)(83380400001)(64756008)(26005)(6506007)(76116006)(450100002)(66446008)(66556008)(66476007)(38100700002)(38070700005)(66946007)(186003)(8676002)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?XLEHh2+Z4HN6tWQbWHc3lXfZUKDveF1vIP+QkrhW2lwHMuWBLt+lzKOOWtlt?=
 =?us-ascii?Q?8oSXTimCDaeqa83hcZO0k8ih6LbtntlnK1gx1zfZkozGjr2DxfzTHNy4zf9P?=
 =?us-ascii?Q?a+v+fEOeFRx2qv3ZlOONB2C9nLlfP00QOkmtb4ndjVvKNwhW/Wh0Fyf9si3f?=
 =?us-ascii?Q?R3ONOxj/Vt3gi4uWdmA5/EuX0GfW72XNCeap2OdglhuPRaqX2xUNYD0PeiKB?=
 =?us-ascii?Q?9MfkEH+AWD/YagPYHk84YsIVqfq7UbwA4wkwUM6JHY9f4WLxJ9keJCz3FX6v?=
 =?us-ascii?Q?0p5V2C8PgeuvnnpmaZQs3Z3ueByOs0OentGAgbaf+R4oxXsieTEYsTItt+uJ?=
 =?us-ascii?Q?FCNWIjRTbVrZ0g37LdIC82AvmUymGJgGUpgXQoAqp+QukuCHC7iZOUejg8pQ?=
 =?us-ascii?Q?hkD13AzU1j55kJkIaeFO1ydZzZjTSJrvtsowqM7SAG415htxjHJhkJytYn5j?=
 =?us-ascii?Q?yThTqlYTBOhdgQm0sTJfsayld+AtzaXtvvWkl5OiIU8yaHUqFn/O5B+HioAe?=
 =?us-ascii?Q?qfqViicGIioWeaA3W666l3awCvGs3663gAN8hzMpMJiL3Ua3e7M1XrtrQfSa?=
 =?us-ascii?Q?ujSAEI2N3MAuHIr9+EaxyUcH+ZpCEjiw6vhlMf8xjMUWDLzm2iSQRbq+a+6J?=
 =?us-ascii?Q?HshABbKSW0G7SgZrOAu5ISJPXyaPV4GdFhpCtG3bPhb0cTCqFNPWvKQ2/BeW?=
 =?us-ascii?Q?cnpr+vxlqrHVGkj554k3tRZXTsCTG4NUZzvLzXPSEbyWKNOudlyCAHIRs80r?=
 =?us-ascii?Q?i6fCvRPOkU1pvUbh7j/ZfGWAf4kdcHYS1P5BV1cimISmQ0wXRrPharFDomta?=
 =?us-ascii?Q?nT2MLdEr66XefZr+8RGSKJ7enTG0t5e43PC6Gu10hnqwcHAXP1tvCBTvEKvC?=
 =?us-ascii?Q?fJ8jaMjMqFpU+2cvownGkQRehcSKBhoNzG1zhgiyDV9B1Ar1k9MzRpvH2l/w?=
 =?us-ascii?Q?raoJF+BKcrmDYWs8guztcUSImwJrY2pMw8tYkxbZP1G8Pydmbg+U+ZUXU7Ii?=
 =?us-ascii?Q?l+CEsr7bKIBB1Biy6nAmqUzRpIs4HJ/xRTtdhpm+7H7lngzTSfTyHy34SUv4?=
 =?us-ascii?Q?5wFIrC+1zI4o8XUbinMvNYLGTi0++xUwJc8t/5sXoeDHSeJmI4oQ6iejwL9x?=
 =?us-ascii?Q?tLTZJ/qXIw4LMqEl39CdFdGygfvCJfvkjsRWlOjKq7sYJTX2CHzcJ0JarA+T?=
 =?us-ascii?Q?asE6iaK7zO6QG6SSGix4MF6QWtw6OKGrzZSw0stGvaAVMrMmVsEN9EHnwxjj?=
 =?us-ascii?Q?2pHoBKZonFi2O4e/fXSKelGbIC0H4sMS9Kn54b03YgAmn3K95G4WOBK6oJOF?=
 =?us-ascii?Q?ldke/vGSOu4rjL0heEBJcZUbdPTIvq8WfSx9XwmllYjoOYYbhGhqgD+KhrSz?=
 =?us-ascii?Q?8aMSgdnUOlxhlfK/CcJnro3/lbycmQFEodh9SDSTHLhXdQBdCtlk6UAxvWSw?=
 =?us-ascii?Q?9Klh+s9mM7NfxR9KWVLyDaxAfyROF3IKcSI3jTvkJLlR1TJPZ90pOGfMxI83?=
 =?us-ascii?Q?gzPMFcvDIDuZCWC5sXtH7zWQlj7xDnKMvWOw2ls8Tc1NR8jNwqZwxbD2oCoF?=
 =?us-ascii?Q?vZvOKyCpt70JzhFuxsm9NDl1qRKHiM1g7ojECrXBB2qam2/vSIXKIltsTTKd?=
 =?us-ascii?Q?Q9zBpWner6P5SxysDinzXZl5elikeqBtYnUfnv9E7n9x0MQT5yqsVNx0rFNG?=
 =?us-ascii?Q?7yrLUyOY7Y5Bll4Cec6apIqa6hVaocXUUZwAe1hhJGAEQtYzIe64BlAsLU+e?=
 =?us-ascii?Q?bMiK+cIo3w=3D=3D?=
Content-Type: multipart/alternative;
 boundary="_000_CO6PR11MB56360FE2C5052E4214390547DED39CO6PR11MB5636namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5636.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cedc3178-380d-4000-5d90-08da3a3c006c
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2022 08:37:40.5740 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2Rbov3muocy36a5TPhXxKMSgsu/NgRLraVKLqj197TXSDUgfdPsBCLYvbjfersT5yrYlKexXiNlgoGttPV5Z0gWTtLLKjOxsPeCW6zoQW1c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5825
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] [CI] Maintenance: Intel-GFX-CI down on weekend
 27.5.-29.5.
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

--_000_CO6PR11MB56360FE2C5052E4214390547DED39CO6PR11MB5636namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

This is early warning about GFX-CI going down for maintenance
on next week weekend Fri 27.5. to Sun 29.5.

GFX-CI will be migrating to new hardware starting Friday 27.5. and
estimated downtime is at least 48h (CIBuglog database dump/import).
During downtime, no new builds are done and no testing is performed.

If all goes well, CI will be running on new server on Monday 30.5.
If not, the old server is rolled back by changing IP and the services
will be restarted on old hardware.

Visible improvement will be doubling of disk space, which
allows us to have more history stored.

Weekends usually are quiet on mailing lists, so I hope this
won't be too much of an inconvenience.

Best Regards,

Tomi Sarvela
--
Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo


--_000_CO6PR11MB56360FE2C5052E4214390547DED39CO6PR11MB5636namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:x=3D"urn:schemas-microsoft-com:office:excel" xmlns:m=3D"http://schema=
s.microsoft.com/office/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html=
40">
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
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
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
<p class=3D"MsoNormal"><span lang=3D"EN-US">This is early warning about GFX=
-CI going down for maintenance<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">on next week weekend Fri 27.5. =
to Sun 29.5.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">GFX-CI will be migrating to new=
 hardware starting Friday 27.5. and<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">estimated downtime is at least =
48h (CIBuglog database dump/import).<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">During downtime, no new builds =
are done and no testing is performed.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">If all goes well, CI will be ru=
nning on new server on Monday 30.5.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">If not, the old server is rolle=
d back by changing IP and the services<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">will be restarted on old hardwa=
re.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Visible improvement will be dou=
bling of disk space, which<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">allows us to have more history =
stored.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Weekends usually are quiet on m=
ailing lists, so I hope this<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">won&#8217;t be too much of an i=
nconvenience.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Best Regards,<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Tomi Sarvela<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:F=
I">--<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IE" style=3D"font-size:9.5pt;font-f=
amily:&quot;Arial&quot;,sans-serif;color:black;background:white;mso-fareast=
-language:EN-IE">Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 =
Espoo</span><span lang=3D"EN-IE" style=3D"mso-fareast-language:EN-IE"><o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_CO6PR11MB56360FE2C5052E4214390547DED39CO6PR11MB5636namp_--
