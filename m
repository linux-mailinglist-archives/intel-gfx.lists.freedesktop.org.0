Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B6554D1347
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Mar 2022 10:26:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6CFB10E2F6;
	Tue,  8 Mar 2022 09:26:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 824E010E2F6
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Mar 2022 09:26:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646731563; x=1678267563;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=IfPR/JSdnqIV5vvVPhjuE4umYTDyB+ZL4tbQSK79lmA=;
 b=LX2clMcUm0qQZmYX0IzrjqctmRHzC+0RVv6hDPtrjCDOoRFnW/BbSp+m
 DPCWn36HWLO4PjnpmJi3YFHjenuO2lFHnuUFPqdIMuRYWSBJ5tbt1Oxk9
 ExXXkanIj0YsBSPt7W/KFyCQQj3EmLnGBcHbu+e7al6vUXAR3xQ//HVA+
 gUReDsBtCmP8IBxrZoSmY0qXbsI2cZ77/6MtOJfjfk9XnmSLMETL+Iyf8
 GbCiET+DF69czGPAn6iJeoF869r5oG5DyzuhNUnr93dErX/IUL3kk3Vc0
 T5u32em/ihZznZQL7VaIJbMSaRxAuIN6rw3sIc01jeq4oosApGzsPnHxn A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10279"; a="242076318"
X-IronPort-AV: E=Sophos;i="5.90,164,1643702400"; 
 d="scan'208,217";a="242076318"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2022 01:26:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,164,1643702400"; 
 d="scan'208,217";a="780651679"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga006.fm.intel.com with ESMTP; 08 Mar 2022 01:26:02 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Tue, 8 Mar 2022 01:26:02 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Tue, 8 Mar 2022 01:26:02 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Tue, 8 Mar 2022 01:26:01 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Tue, 8 Mar 2022 01:26:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZiRK/3so2XftHeEVjX9tE5dzWKif8r1NuKJvS9AmTmcf4V9AYuK5Ut6pBfH31h5rjpej19cZSu8RiO9TV7Z9rUYd2Cnxzi6nVgIPdoVD4hFy1m7P85gpxQIfSn4yBLoMuetOrCriiYcOLlwy0vDpgCje9KYlDSWCmZxj3bC+4eHp1sECXB2YaR5SVbCgxRCLVEAAKVzniwX0q+7YGvRd6g+Bft2qtkuz1OgC4cvBZk0KFC24K5gJAdsI/rkLdnGIIgChBylx8MFR6F8l4d9FwFZyHsnqOYaPlwePl+oOjFapBlgnRt4gpXOn7KSL0iAjD04P9rbeH/x/ia1IESdwGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qLVGRwowIdopfcjRm6zVG99QW40L+jviIH5VEfJQsxI=;
 b=IoLCY5lPRKY9qEInFdeWrOscfD8w7A+8XOsG2vXYEQssUcTmcoXOCV1RsjXOVkPQ2xX9hXmc0UPdopIMPV8a9NdBtn+geEaub9yQ7ZT+FlqqmcaNB6greX7kuMjqzbAYotlZQkUdKA78WvEqrSreOWCVQMKlmea+9EXLN40oKlgdayVRjddhtOSAzH3703WFN/oYdUSnpbpf1QATzuAbuunLfC5Zd3BA7IOWw5tpwLmJdOXNLPG5aGz+7JcbKN+7Y/Fv7d1c7KKyomlWwdqywVzMrKxOW6ONJFTYfBFDoIXy69XN5PNuzcwXWbaiY+/dU/hY89pK6gAjjweENkAm+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5637.namprd11.prod.outlook.com (2603:10b6:8:33::5) by
 CY4PR11MB1349.namprd11.prod.outlook.com (2603:10b6:903:30::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5038.20; Tue, 8 Mar 2022 09:25:59 +0000
Received: from DM8PR11MB5637.namprd11.prod.outlook.com
 ([fe80::256e:ba1f:39bf:49f1]) by DM8PR11MB5637.namprd11.prod.outlook.com
 ([fe80::256e:ba1f:39bf:49f1%4]) with mapi id 15.20.5038.027; Tue, 8 Mar 2022
 09:25:59 +0000
From: "Sarvela, Tomi P" <tomi.p.sarvela@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: Intel-GFX-CI is halted due to power issue
Thread-Index: Adgyzj1MXdBkDmVJR2qnqQGEJusS2w==
Date: Tue, 8 Mar 2022 09:25:59 +0000
Message-ID: <DM8PR11MB5637F73BC1D708F91A244951DE099@DM8PR11MB5637.namprd11.prod.outlook.com>
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
x-ms-office365-filtering-correlation-id: aadf3af7-2c72-4602-53c0-08da00e5a869
x-ms-traffictypediagnostic: CY4PR11MB1349:EE_
x-microsoft-antispam-prvs: <CY4PR11MB13498A0D3665F90ED2EC2A5CDE099@CY4PR11MB1349.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZZMM43Fmb6U6xY2tRaaeuH6Jjh5covS81z9uulAoWCs0lKOV1jNYAmmJzfZWfq+6Z5MkWFCUdXxNuzxfkoIdsL09ZgFu60enFudu2w79pik0O83SZuJniBPS5oLXSJ2I74tnXWTlqMZ/EWeQLn2a8OGSZD157seXMlgiPoodEexraLym5duZqbw+JGXIn4+Umeq/BYcf5mCXG9f67+Mp3UFqv1zVAtTj/6m2ZZIHvxlgltkizJz8n1ZqNYcKxQ5eMtSJTVm+icKV2RB3Dhycvp6MFnW9v2DB6WVt1H/+uF8fSAQbeAVNLFVOJWd1u8pQHB+cstF1o8jFIFD9k0Gf5oRY7ywua/SRu0e0oU7hJe8sd+dDgXjQqIwKql4FOQVWuZi8147uZ0ROQKbYoXfX4Y5lTK5Rw0eLR1rRFJrdSubdwu3FrQvhsSS/u4RCBMV1jIYxbAT/eLd/yu3PZk4HJRxUQz25L7P4UFftso1t5In/sxry4a06/E8baSoQVYsrldJgrbkpOvVrtIyln5c0ITKpWCENRKyTl9qEwS+HZ7DbZrS+q9H7zR0ph9JGNeoAduiJWP5ZCU6LyzvGXT1sOXLiWKMj2/3LAcfvK0jYlni4PyfQMSa6T+ojvzNCxCSBz8PxslY327axw+vY3MOtYzAMduvCmoiavdmUh4skU9xviWReyLpHuH0yfDt9/INmWxhCi6oHrfRoXuPSEZ0wYA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5637.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(5660300002)(66446008)(8676002)(64756008)(66476007)(66556008)(66946007)(76116006)(33656002)(4326008)(52536014)(2906002)(316002)(8936002)(6916009)(186003)(54906003)(4744005)(38100700002)(122000001)(38070700005)(86362001)(508600001)(107886003)(82960400001)(71200400001)(55016003)(6506007)(7696005)(9686003)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?UOeAA0RbS2kwVrbyWLUHkULRJyGaEzkRfyYzv/HRj6nPqAn1CWDw2+9A3geO?=
 =?us-ascii?Q?aGeYvwSEAMOKLH5dzbDS33TkpV8qz8ebTDWTtfWHMyvFY0G5qafP92UQQvol?=
 =?us-ascii?Q?0i18LMRHv/KCBg6LbFifVDEGz/zWuBjeRwSUr/Y8NtTgEJ0XlEV57G0B5GQJ?=
 =?us-ascii?Q?egkR6tFm6pSN/Bm4cGXqqy6Q1JpQibmqqhxutDey4GKEA6I2MicTzi83sUf4?=
 =?us-ascii?Q?Cu+a8OVJuwUhtcD2H8cnxuJ6ePhn4GbTnz+Azv6VSr0hboQ+kfAoFAQs7nwA?=
 =?us-ascii?Q?9hPmqn+1ofHVa/zK4SO0Hrc878qqajvTiZcUrzQUq84UvwLbdLJwP+pTFcMG?=
 =?us-ascii?Q?AOyoSVoBj4a19bLc/stK9EQD8736JMwRltx8HoZVUc3TifhLQv+JGrzOBpcl?=
 =?us-ascii?Q?rcFWMScH+kt0QkygsHVWjfunNfbCoznD91D3br3gwKN2+1uilbRpBPm1OUNN?=
 =?us-ascii?Q?2jtjZ9BqXEMD+2VbcIJIihPN6d/M4h7UUr0DyyAmkd9PklQMHA3hKXRf9nK3?=
 =?us-ascii?Q?Rk6XAP4uQMygxpA3X1qeLg7ezC/MJ1i8Fyb04RmBv4VcvJ1OeumJFXBHo+2v?=
 =?us-ascii?Q?jv9nHbEe0Chpp5ButM+05QYDeQjv8WrpthTJbhKt5jBij4uhq12k+q02TLqF?=
 =?us-ascii?Q?/6CBKv58tDAXFkKjJjqEFDme6AuQ3TIDAwTGmdS6PPkgZTPTPQce3axbTDvH?=
 =?us-ascii?Q?i72pMT3UzjlpoQj/4CdZHL6rjxVGaqGffoxRc18k6lDRR68/A3NVE0SQLFk3?=
 =?us-ascii?Q?sKwvKfoXGb0eimhw/daTQqrZn2zd82ZC0BXuDc1WzE2s+9yxp0Xo+YZ0F/qa?=
 =?us-ascii?Q?bPfZgW1Az2cemYiDDuENxbI9n7m7mnM5am3XXti9KRB4bNADh948AehvLHut?=
 =?us-ascii?Q?WSYAiVJyfkaRjUtKCOTZpnDmuZ26s+/Wz7tpLHc8qMPkft17GUIGjSBtKWwA?=
 =?us-ascii?Q?q601Sz6yDhNaWgV5nXyLlf6orW7yMTngepPZJEH6LEKWg0djzNByxpI2T1p9?=
 =?us-ascii?Q?0lfTiGjaQwORgexIg5+4yseQ4FiDA7UkKKCo4dOhMMkZn2KMIEai9bivd+PW?=
 =?us-ascii?Q?E32I490CLMaaLEa0Q9LTAUBRiU79QdJMd+r0n9S0mhw5PF1IfR2CWxc4piQv?=
 =?us-ascii?Q?jVtgkxVekdMEP0KsRAlMqJP9pyh8oVX5+XiRrBCpdbY/r2Ij0qk4Mpuu75LT?=
 =?us-ascii?Q?c4zadqWDe/zCPOJE0WhKyH3P/QEKS279WH4Mkrph33P0UNSUc75MP3uAdoVZ?=
 =?us-ascii?Q?o4pbp8zdeMB4eG0hM3ts9IdafwtWlxzI61bGn0KwEOTx475MFIuFme44wzsq?=
 =?us-ascii?Q?K6tw2RJct+Tv1lkA9Se40vVn9l/rgNMg/5DWp2AhuSdXAVb3Xc/jLAvnsrtp?=
 =?us-ascii?Q?vpidVPOKMFQKMUJq85/qf6TALB4t1ykNAnfeEnRBDH7YNTWHSMR+/ijo6yxk?=
 =?us-ascii?Q?/oZW3Nwad45ibG576cPgj8BJbuo5kHk8F+1UWbDe0+5CWVol5GlIALtmx15Y?=
 =?us-ascii?Q?KbMRBC6ghFkOC1M+Poz5E591R1kGL6ZPMVjnENkRhUcnFuWuQQEnlULmITFy?=
 =?us-ascii?Q?nRm/VCeWPrwW5FqquuHc9a3V1QWNvs4gOIq99cqLQeVDcYRrx8jEX57tbKiI?=
 =?us-ascii?Q?uhNUnkh5iCiKkC/jzxi5kpSz6bo++BFVdUM7pZK3VurLWoL2wFQzVF85fMJ1?=
 =?us-ascii?Q?TBxZtg=3D=3D?=
Content-Type: multipart/alternative;
 boundary="_000_DM8PR11MB5637F73BC1D708F91A244951DE099DM8PR11MB5637namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5637.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aadf3af7-2c72-4602-53c0-08da00e5a869
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Mar 2022 09:25:59.8863 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: D807rsEqMXJyFSgRrojnArlQ4oLs7TBx+kEkmCfcH05mt2M97km6YLwdOQaHL9XcNaLlNTIpUWWhA/FL05KeH4Jlg5RPvFL0/zd/s/KhqKs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1349
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] Intel-GFX-CI is halted due to power issue
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

--_000_DM8PR11MB5637F73BC1D708F91A244951DE099DM8PR11MB5637namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


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


--_000_DM8PR11MB5637F73BC1D708F91A244951DE099DM8PR11MB5637namp_
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
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
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
</body>
</html>

--_000_DM8PR11MB5637F73BC1D708F91A244951DE099DM8PR11MB5637namp_--
