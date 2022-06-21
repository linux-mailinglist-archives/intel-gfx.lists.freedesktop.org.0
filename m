Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFBAF552AC3
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jun 2022 08:07:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 984FA112756;
	Tue, 21 Jun 2022 06:07:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BB75112756
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jun 2022 06:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655791619; x=1687327619;
 h=from:to:subject:date:message-id:mime-version;
 bh=kzFcJgCIQvPDKaJjk4rfXLmCnweGvTp8ei9x+FWQXQs=;
 b=avE18m3c3CIH/nSb2sT1ZXOwLmBeSYmToGhg5EUrGBbc5msC+TpCjUv1
 5h0PRDNb81ak9kteSge5zK1UuW1em53QPnXj3/tVpLeouyWNnIDN8nucG
 NP/kGDfYjffnRpZZYSVCUjFMuoo66ztW0f+/lqair5Cc6ge5lk0l+fwZy
 mGs6C8JGZ2uztcH8yRr/z6smhkFpyNf/GiS0OqtfrE93qZebnx6B2de1Q
 omqfClkJC6F0NFOnlmKBbHvFpNkY8ozI4rgwSpi6nnSr7yULIeWbVelf2
 IrP6sB1fsUelmfITOo35pEJzS1V6ZzWmUpONup+uhuFeqy1Se4XfbvqYx A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10384"; a="263068945"
X-IronPort-AV: E=Sophos;i="5.92,209,1650956400"; 
 d="scan'208,217";a="263068945"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 23:06:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,209,1650956400"; 
 d="scan'208,217";a="729690226"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga001.fm.intel.com with ESMTP; 20 Jun 2022 23:06:58 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 20 Jun 2022 23:06:57 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 20 Jun 2022 23:06:57 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.176)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 20 Jun 2022 23:06:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hvdWJv/LMBk8d731QzoQNXP6CfEV40QoqFX/CJTDbPx4Sq7FNijMUHse4JMHlobbm5lh7YaXFElh92OqMZxhbBMg82O0H7H0K0iBzAvJKfsuIfA/eHSLErX9kbXxdPPZIVN9iBwhuughWg8dlQ6vxmgyzmw+9rFm7yTuyiODrrwFWbnyoBAnJp5fTHVLzP90Bjc/7yGKjTzVKNpxuR+vX/ICd5GHfe7S5HNYTGYueMUf3Fy6tScW4YFII218ikstRpguupHRrBF+TL7MPJKMYFT9hUhVBwDZ4GYtXTFBnZRuSt9DTJkJ0AwHO3kPy/qtQ30bb3dEoVaUSNhJtmCBPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OSotQXrXzU3FuKlEMdIbfbvQGrGyzOSgyRlIui00zm8=;
 b=Xx94FTN7igFcw2c37BwRujuRG6lm7e7ihDtUIx+qKCsSk9eZaposwuj10FVn1wQRZ8ty7gknUXPqa6ZjwDksX4H7/Bv4SNq38c0kGwSGZyTY3iky7LeNx0T+JxQyjo/61pdtgxiPrWhobOkHcX5C9YOyP0v3SPTGmPivuoR0HGkE+B5NrdR16jfW160E592a/2Tc/RKvApSetLW8ED65PtFRfvx5EjcZvf1pOF+fgA4rqqPlhR3oN9rkItywTiIy4gBEmRHCDSQrybrbnsFG9tSNBz8R8hPLrxfVp9Ij0mt3i+zEzrXsIXXpyf0mbM1PndAsMdAULqRBcNCLp2COvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by BN6PR11MB1682.namprd11.prod.outlook.com (2603:10b6:404:3e::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5353.15; Tue, 21 Jun
 2022 06:06:55 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::e84d:9104:eab7:15a]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::e84d:9104:eab7:15a%8]) with mapi id 15.20.5353.015; Tue, 21 Jun 2022
 06:06:55 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: intel-gfx mailing list subscription
Thread-Index: AdiFNRpM8W234lX5Sy2dNucyC7cT1w==
Date: Tue, 21 Jun 2022 06:06:55 +0000
Message-ID: <SJ1PR11MB6129E2FE91E40A6B7002A173B9B39@SJ1PR11MB6129.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.500.17
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 949709a9-3f27-4baf-c42a-08da534c3e84
x-ms-traffictypediagnostic: BN6PR11MB1682:EE_
x-microsoft-antispam-prvs: <BN6PR11MB1682A74AC89CE2C8FFCCC218B9B39@BN6PR11MB1682.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: U9+vKyf43QzWiDOdEXe0Cmc4xFbIpEldLdbnK4QWmIThmk8BMEsnd14ajd672QbhZ0fkNUe/v6K27UqeBEFJFFwDI6BrSRZMb5LEq7VAuUAWFMJFle07OCkPTZTZ9Bq66xgJ8P3ak6jIILKv6sHXyd3QLco+U1McpdbpVAdr1VAZaqBqI+q+ohraftYn6qDGEJU/tzyoXeyX20W16HfTC2Wyy8LPYriIBs/vnkrq/6vbH0LPjQbUBkE1FAR2FZE/k6YOx92NrrKqSY0nJmnTU5xoyqoaQilZUIO+xkF8Z7CsmquaypGWAkilz8yzzHPkE/SwVoAGXQxJCjA+96dIJVelPLXIhy/GB70iAa4bWMmt1KLkqgzpkKN/n89kBCaIacbNKAsHOJ4vB22Soe1WgcMowgCZsuR0/6wcNNLyS+lc7NT+f2lk5xv6q/YqfEMblfYRFfAjrsFE+cYFx2I+NNxLNowKDemEMDLEy0C2FEoeYNAXqustKqYaCEIakcAImv8/pKsZk3h/QCFp4i22USCYhIlzi2tIF7df+4cGxWWsPOwAcF19scmOUUPwux6XV6OPwBL49Vtf07A1RaLeE0t44naOrjMvY1Ec+7B25UYXlsGOp6b2JKY2/8adTLpV7B7o7UaxiBVOWqecSeIoP4fvJ1dHzj7rGnnyi3VQMX0PyNhuLqNIIEv5Kx+7lNXtYQQZWwtqeouv5Pqs0IQS0ZMdOjWd5NzGd8GpOoOBjTek1dZbtJfplUMUma4P5zumBR99XncnJBNztmX6sbQdKQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(376002)(366004)(39860400002)(136003)(396003)(71200400001)(86362001)(7696005)(166002)(9326002)(478600001)(83380400001)(8936002)(66556008)(55016003)(122000001)(6506007)(52536014)(66476007)(966005)(2906002)(38100700002)(6916009)(66446008)(8676002)(66946007)(33656002)(558084003)(9686003)(316002)(82960400001)(5660300002)(186003)(38070700005)(76116006)(41300700001)(64756008)(3480700007)(26005)(223123001)(130980200001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?I/r0sgLN5RJQ0YriWE1qLEuRIWVqywhxec1Qzw5QDxSbwwQ4wXkRFN5yLTQV?=
 =?us-ascii?Q?LogNPtHCec4vzTYbS2/UWP3FW+i+XXPxRdgjTBYkhJpzQTamUWWwh7pj9Gfg?=
 =?us-ascii?Q?SW1m4fC8ZHINg2TLdmY4ux/Fja3IPU6kyJqrTzu3wHbqktMBwiajfU8qmG7w?=
 =?us-ascii?Q?IsoYPlEbLKAA2UQGt2aXrn33stoKDK/ZnJWu+D8YQXn9mS/1SEvSOmxCRhl1?=
 =?us-ascii?Q?91hX6p442LsxsFhNp1WFwdxtS1XTLFHvmUb29fVmr5ikHBd9PjZTZHqhPa9T?=
 =?us-ascii?Q?WRyxiNcSu1bc9jejHrjBks7FvSxAXGts3KkN6KBSQ/B57EX9N7uWM3H8xXzy?=
 =?us-ascii?Q?b2/PGiGD0ctlOsdTy+qeqVpBD6cX6TYsTX9MfcHjW+mFJxa8g3WIy0FrnqPZ?=
 =?us-ascii?Q?Vuuz6vWtqsyH8YqNJv9fPRV/7tXeHO0J10F+buO65mdCjO+dqQ4raPyQhG5O?=
 =?us-ascii?Q?P2u1WEr8sbm18QpsTHIzaX4+fKjNKGolDc1OHOJYX5LtCzZooYCR6h746SDW?=
 =?us-ascii?Q?DdS9dPNJ68Nmz1W2q1GN4pNO44gvDTARDm5puYzltqNZLdui2jBDvvPJrABA?=
 =?us-ascii?Q?hMRhZy+ZS//h7FcdR70yKNqpx+TY0WYhMyKpDbwjPKJq0cBiWzhCIyRap0Jp?=
 =?us-ascii?Q?W7d9ZxbE2lqirfFwNu4ZaaJjtaunCojjWoDEWtsk/ZKO483e5yX3jQiOxh9m?=
 =?us-ascii?Q?bG/ydun+OVQWMyFn/GaDWDMdMQvTAqvzF7dTfy4WDvjZSrYiMtsVmRlEJEMO?=
 =?us-ascii?Q?5DRxzT1BzJjuxv5/UYBC2gwFPomCBfc26BM2jAlAOC9vq3omtuXspRxx7rba?=
 =?us-ascii?Q?w37GwgWG0Nhp25EqoJD7Dsg7kwYRNZ3R4Axvsvsz/us5TBaqTA/bR1PLcQBF?=
 =?us-ascii?Q?wtne1HvI8bUNNCVDFuF7Sh04T/4h70VUwF5XOEJAPBY/zlNW8JEsHuZP/LY0?=
 =?us-ascii?Q?ohOfIWXR87WTjnYB0HlvF2PiG5z/d4U2CspdvjCqor/2At8+JO6ok8O258NA?=
 =?us-ascii?Q?TCp1tQgbDFoMcpyYjvBpmCWAjqPW4j85X2AVJkRTIQz5UCbyJPDXV09Vy8qH?=
 =?us-ascii?Q?xON56xwhxo5UgaqEWRPaGo14EnRqO01ruA3GSyVGgHOUrTRB9EUCyKnvZu/8?=
 =?us-ascii?Q?ndc4a2w1j+wNfeP8b3Sldr/jMhgMISxXRcd7lMKEuZ5uN0RG0FiLRVNExfJt?=
 =?us-ascii?Q?7OtEgemqDH82Fxl7JQRicxCqvnmpbmkgcZUT4y2Jz42ARztHnW2Kxlfn5I0o?=
 =?us-ascii?Q?5D2sG1pHklM1JcBQSdYXl9tX8AzwweQ5/cs9bhUpTaCyeXfYDdM8rDI7dri3?=
 =?us-ascii?Q?pNaYLjmU+9wYnbw0yMvBesguEofeUIFXSraF7kAO1+488BUsf8k82rjc+3MQ?=
 =?us-ascii?Q?l/5zu9aB7ZWZEXu5Eyni7K8CyMCZvCv3sdXWdstlUuoxnm7j/leaYoB5iPqi?=
 =?us-ascii?Q?AVeDETVIbU5FKJWgD1EqBTiCqCxSo0tHQAZ7sU3uE15/muyLQyjW6Iviu/4e?=
 =?us-ascii?Q?njg1TNfVqEKSw/ex7NOGBRVH9UsIeHm1gPjtoQmfrDvDPQzLK1Guys73Znh2?=
 =?us-ascii?Q?aSnQOSKqTs0fi0eXWRsGk5RHjXDnT8LGS8p4AgriyTgIqXQzr8zyMUQ6SF2R?=
 =?us-ascii?Q?ckDfetfgoJ9qFcjTO4sY9SGE8eMdaYQVFmbyWrB6+KqE4F3Wprdfvd8HzJHD?=
 =?us-ascii?Q?YAqFR3IzoZ0+DGFKgVIV+fVazHW1Gmh2Zf8ltv81pAVDuHvKlujKfFd9udBd?=
 =?us-ascii?Q?ZpLI1cL9ET5lwyjSVX6E6PccG+9NdQE=3D?=
Content-Type: multipart/alternative;
 boundary="_000_SJ1PR11MB6129E2FE91E40A6B7002A173B9B39SJ1PR11MB6129namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 949709a9-3f27-4baf-c42a-08da534c3e84
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jun 2022 06:06:55.7229 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: s8H3PZoUoX+ocI3toyaz40Oea1VoJyMxleASD1uCC+TZVPMm3tnVsqnvY6zGcvZRQcj8nvdOYAAfpIer9dXc5tP+6E3K2TnkhWqCCgtB6Nw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1682
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] intel-gfx mailing list subscription
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

--_000_SJ1PR11MB6129E2FE91E40A6B7002A173B9B39SJ1PR11MB6129namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello Team,

Could you please add me to the intel-gfx mailing list?

My details are as follows:

Name: Chaitanya Kumar Borah
E-mail: chaitanya.kumar.borah@intel.com<mailto:chaitanya.kumar.borah@intel.=
com>
Team: OSGC Bangalore

I have already raised a request through https://lists.freedesktop.org/mailm=
an/listinfo/intel-gfx

Regards,

Chaitanya


--_000_SJ1PR11MB6129E2FE91E40A6B7002A173B9B39SJ1PR11MB6129namp_
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
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello Team,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Could you please add me to the intel-gfx mailing lis=
t?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">My details are as follows:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Name: Chaitanya Kumar Borah<o:p></o:p></p>
<p class=3D"MsoNormal">E-mail: <a href=3D"mailto:chaitanya.kumar.borah@inte=
l.com">chaitanya.kumar.borah@intel.com</a><o:p></o:p></p>
<p class=3D"MsoNormal">Team: OSGC Bangalore<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have already raised a request through <a href=3D"h=
ttps://lists.freedesktop.org/mailman/listinfo/intel-gfx">
https://lists.freedesktop.org/mailman/listinfo/intel-gfx</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Chaitanya<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_SJ1PR11MB6129E2FE91E40A6B7002A173B9B39SJ1PR11MB6129namp_--
