Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D06B7535D96
	for <lists+intel-gfx@lfdr.de>; Fri, 27 May 2022 11:47:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE5E410EF9B;
	Fri, 27 May 2022 09:47:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DB3910E452;
 Fri, 27 May 2022 09:47:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653644846; x=1685180846;
 h=from:to:subject:date:message-id:references:in-reply-to:
 mime-version; bh=oH3TgJFaIJcwJCXY9AXnC6T7HtgE6YZtyQ8flvp+ROs=;
 b=BHFOpKDsdAQdtgFpUVZWJ1lPXH7ftM8k/83GvHvg6rOcldAxHqi5GyLR
 +VUZ5sP0vyEaYjD+rgBDo6tOusgzGvXYZ3YlTOOgJAR/vW25iuyNGe1zL
 ur8RAg4ulgCeVuekM01bM+sXlnsnPX/7QajTiBXlcX/NQMNdCMPGOCYmZ
 hcunp9q1fkA1JkfLrxO2Jln8IKCcAsFqqWbu0fcapyUrt7A1CV5ZNl0h/
 tDUAEvhhrwOk8g3T43EU/68uEZNHAYG10tIdxMeLPRTZr7TSm6ebv/iIS
 GQo9wNIe+tPTAKAxznRD+LDzvKkNgaAvJvNtC6iQG42R6cU79JYBrihPb Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10359"; a="256507835"
X-IronPort-AV: E=Sophos;i="5.91,255,1647327600"; 
 d="scan'208,217";a="256507835"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2022 02:47:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,255,1647327600"; 
 d="scan'208,217";a="574504855"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga007.jf.intel.com with ESMTP; 27 May 2022 02:47:11 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 27 May 2022 02:47:10 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 27 May 2022 02:47:10 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 27 May 2022 02:47:10 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 27 May 2022 02:47:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CoLIZLRzQDsIav7dJEKzxqtkqczKyuDZ9rXBElwEf3/8SokD4fwoVC92abvefcaNho6Ci/cpXRFmtcCxdc+JhkLQnqdhayp9Zj7oreEpdiov8kh1B/54QSNCVy5CBTBRpIkJnR616XQeBOuGIZ7TD5HGXCCaNh+C1cKEzNTM/nE1HjGzkaNdPhXXX7wWhyypa156y2+8jmTxCkyad55CqNJbWDpd27etj5DaDkjhkj6440xAfpefst9EUNzNFePFjDmVxZqkZ63l5rA44eoEkrW+VjyqviA01djY7BKUwX+7KNk3UqHmkMqf3CsN9vAXeXLKjvXW/xGopgtYHmyUlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MVWcgTOIkdHTjt+fyegMGOyzCy/ZDnsMnQAoxNnMWyE=;
 b=bx4J3fg3/LNDfwQ5LtSMEawQKvHP/O4tqlEcMkV8U1p4duPqKM4ojwG4Ua4BRsaqBnPN1pN0A25uBpdZC3x6HAtNB6EELuyc9KHQhiJ/4d0j+XjbpT9zqLpui6xVHDVdtluW1DOcztdH0p4dWAQH7TXze1qkfwAen7fzea6r1gAaJ46yVjWeP7O4DQp53FqyILwkO+Nl3J/1sTqkf9Y0kv64cnM/heCaNi2Ebqk2akos3xFLOzkpNDjNifNDgR88zlURcAli8c2aKTpWoqce0SOZrP05fby/b050AZpDHZCURxS6U1wMhnnNPdABDCG8BqR+CJh1S69bKlbUtIBzyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO6PR11MB5636.namprd11.prod.outlook.com (2603:10b6:5:357::21)
 by SJ0PR11MB5070.namprd11.prod.outlook.com (2603:10b6:a03:2d5::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5293.13; Fri, 27 May
 2022 09:47:07 +0000
Received: from CO6PR11MB5636.namprd11.prod.outlook.com
 ([fe80::6d3d:fad2:4245:8f56]) by CO6PR11MB5636.namprd11.prod.outlook.com
 ([fe80::6d3d:fad2:4245:8f56%8]) with mapi id 15.20.5293.015; Fri, 27 May 2022
 09:47:07 +0000
From: "Sarvela, Tomi P" <tomi.p.sarvela@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>
Thread-Topic: [CI] Maintenance: Intel-GFX-CI down on weekend 27.5.-29.5.
Thread-Index: AdhsJAqmcjlpoedeSuWToyYdzUCA/QFiXY2w
Date: Fri, 27 May 2022 09:47:07 +0000
Message-ID: <CO6PR11MB56362A89E66B2EB94660D626DED89@CO6PR11MB5636.namprd11.prod.outlook.com>
References: <CO6PR11MB56360FE2C5052E4214390547DED39@CO6PR11MB5636.namprd11.prod.outlook.com>
In-Reply-To: <CO6PR11MB56360FE2C5052E4214390547DED39@CO6PR11MB5636.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e5e0fc62-3d6a-46c6-ee08-08da3fc5dd14
x-ms-traffictypediagnostic: SJ0PR11MB5070:EE_
x-microsoft-antispam-prvs: <SJ0PR11MB5070528EB26FDA0FF762AA76DED89@SJ0PR11MB5070.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tjW6HFBtwTs2hPv4m5bmY7KRd5BnPlsfnpBt6pnmL3gWYXUIhbF+MDvcur1Z0IkiXse5b2Z8mzi+/9b6PdAMfkz+SDu1BCfHLjKVxWij6238nyH/CzUu/0LAiZxZ8BCO6LRq7scNu2RPfeYmCSzSWvl6XC7FoaX7RlRh8mUHxtO3PdkMbDuvO0L5x5LvEb/0svDJ6zqjLUneWJAiN5Ls/ZiyIGlgKDbJ9mYJtTm6IMkDojJC+Y7QqPEqzM/wgntmBjB4z+rhf5srBmAfeEmtrYgLpC8OUOqQf6p7xL48MmQM/c5SZH0F5DRenZnLSEHEDg10NWIs2A6AhO2iE2xFzs/CClul8YJBybCygmvpXZ0+II2TzQQAge6Tn8vFrOoIX7XcBL2/AUKJetcntu7wQhdrDmnBt9xM/Pr9Sdc1D3rZfWXK6UTr/+2KE8UTVQp/iJcqo1QvgTvJgrFkLFIoLKRYtKi6Qg95FRMR/4q0eWqTXCbXncE5Djo3dAQIiPICAlhm4BqUdMqtJfhujGj0X0h2c2G3ugmULjg+747TfWoecVjZR9UwxCrSaDlym/odstjNe8KimmHUtk2g1zjxko2PW4CMoj8B3TKbma9H16oN/BAIcDTvXpla0vbj4/OWX56BqkMhgapk94VJ8BFWfQr45IgzvlswcfWJdv+45eWPuc5zUSwTHkQfKUs1GB5K3xE+3GYpU0FZugkPUMes4ZX4nRx8wPGxM59vAnkHniPsItyb3fyjGBpURivGhSiHDoubuesrFB6odkwZHyr1Xw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5636.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(76116006)(83380400001)(64756008)(66446008)(8676002)(8936002)(9686003)(5660300002)(122000001)(450100002)(38100700002)(38070700005)(52536014)(66476007)(66556008)(66946007)(508600001)(55016003)(2906002)(33656002)(316002)(71200400001)(6506007)(7696005)(166002)(186003)(110136005)(26005)(86362001)(966005)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?p+rbfk2Uy52DXYOgiEmWxiv/RwKsvPOLkYgh/cvqeLJLPSDLcoc493TTlHr1?=
 =?us-ascii?Q?1UI+VDyLi3epaF1HMtioH/aQVjOOobFpY0+ke3/mIy/ReOdCJGFntbuoRdU4?=
 =?us-ascii?Q?hEFJ36FELOJDvK7hwZ7apygLVqppnCN2vZVfCf+92KZoaFmDZmKbEkNa4ABk?=
 =?us-ascii?Q?o7niLAoE3K2aGYAj72c0aaowDAhtOSXl2yGer0Mvh5kxM7MQ4PdEfimdDlLa?=
 =?us-ascii?Q?AHCtieHXcP50ZTs5s8xx8UghakK8zu3xgRsIlD1rhtZE/4n83eGDJN/xLvgh?=
 =?us-ascii?Q?0rlzMfJvBBzSxtSAJ+nUfZiyy8bBfCM7vm2TfxXM+CFFZzwQartILRbtRTOn?=
 =?us-ascii?Q?6zWn/q0xe4lfv+454aGWrHtseP/h3N9rFa9FkWcRyKH5nFepTMW/ErF895rb?=
 =?us-ascii?Q?LCVTaBeSAoJx6ghj8vCFI95YRhFKSL2ZN7OlyS/ESu6tUySC8akSHmkxJuFD?=
 =?us-ascii?Q?mv/WBM0sYg95bx8ynaamW5ZZwGekyG0K8q1M1FVPxnE7jr/eMumZwP44nPCl?=
 =?us-ascii?Q?vALI4qSNo5VTVwHmzClKQXNr5fBEZK7orlYu6AuqUEKQzQyecCM62Zg+zYHP?=
 =?us-ascii?Q?HEVWO7IE6BdJLTwp5KLCOvn7qvzcHuHFAX4DxtyzRVyGMPt8lvku2zd2sNS+?=
 =?us-ascii?Q?epZItodLkGuQuM3rNBgBwNW4FG3/wCtPSOBJnc2W2ZMuC+nT+SXREamsbNjm?=
 =?us-ascii?Q?ilmr4cgt4HS5QuBVULTXxcF9eONPQvjDfvwv6hkRfOv1q/KFvJRZgRZZ75RF?=
 =?us-ascii?Q?n8zjixPbD9BQGtQbK1m66BC59k7JJTivJ2IzPQoEPnD1QvZGWhqVdBSWhHkP?=
 =?us-ascii?Q?cETc5jQI9L4z7+LuT+k2rqFUMOA9TTbqfvTrQubxHegsVK5eBOhvt2xgz+AG?=
 =?us-ascii?Q?ubROuChnUyFCYtJrLYDwJJwFBLIpcT3BjJG6zSgEk8kfJ2c5PNKpkXjVPu9L?=
 =?us-ascii?Q?rhywTQSpnvnkymo91xMGhvExSnYP3Dz5W/uhj12JW9stZcjoPar4llUZxtF5?=
 =?us-ascii?Q?ijl4fq53FKesPXgErRZD9h4cx+M4L30Sk9ijmobW02BluglWw0yKCyGmnG+P?=
 =?us-ascii?Q?FV6jp80vMt6svK6n//2ujwh4pQMIab2tCM8ff1Z+tw7K6nQ13N1r0siTat2e?=
 =?us-ascii?Q?0CQtlTDYyCSa92t+1eWdLWVWwoFjM23Bhb1scY/8c/S8qCI6saiHHNHAXnu/?=
 =?us-ascii?Q?ZlnEGyqqs91he2MPTWLQ9MAsQX4XZxzdgB1SXkz9QzUnVEMvahvOC2kghw3z?=
 =?us-ascii?Q?p2sVAdPf82lrKefePMaj3zaDX5U2WTWKDZUncFL+aFi6Bh1APPqJrwYCd+UY?=
 =?us-ascii?Q?6AlgpGjXPutnH+235Be0DtizHo+qxorYjneYtI84fdDiS3bwLUyZgmOUZiPy?=
 =?us-ascii?Q?tl+Wlfqbu18bXV7pVVeYCDd2+inBl10dgZYxu/QsBq/z+7coa8sTkm5iQ9MA?=
 =?us-ascii?Q?BP2nY6RMtQieWUYKxALcD3smIEKn7dEoug50k85Y8fzDp6Ui50w7Dy52ilCg?=
 =?us-ascii?Q?R/qGjTS/gV2yPv1rtFbEOSpwLdEvyV0ls5K5NiexZixoTIiZxrt8vksO9Bsy?=
 =?us-ascii?Q?TnEyG44JAhsIQKkaxAi4AuLVZYscARGy3uaBxSVQx96GpnHfuDSkuPlQI9Nj?=
 =?us-ascii?Q?OB2UfwHtHo8RNhIAznYWP4gtDRzSTXtrTmPWL9ahKBV8hEJfzwFTgeNaGcIb?=
 =?us-ascii?Q?h8bhM0pREgnkRw186u3k04Mc1fYbjh4bBcItl10YLUC1K8sx4CfHs61mUJlN?=
 =?us-ascii?Q?i4CI4XdiLQ=3D=3D?=
Content-Type: multipart/alternative;
 boundary="_000_CO6PR11MB56362A89E66B2EB94660D626DED89CO6PR11MB5636namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5636.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e5e0fc62-3d6a-46c6-ee08-08da3fc5dd14
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2022 09:47:07.6433 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1NedY7NxQ9pRuD49MA22m6pYJVQPoaF8WB3kiQjg1wxTwhpI9BowuykfAjA8hnk878CZL9kOqd1e0Ny9k4GtHRJgCMkz3hic6+WVIHP35gk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5070
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [CI] Maintenance: Intel-GFX-CI down on weekend
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

--_000_CO6PR11MB56362A89E66B2EB94660D626DED89CO6PR11MB5636namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

GFX-CI will be quieting down today for hardware migration.
New builds will be stopped soon to drain the shard queue.
Existing results on https://intel-gfx-ci.01.org/ will be available
during migration.

CI data migration is estimated to take two days. After syncing,
functional testing will proceed. If tests pass, partial functionality
(DRM-Tip) is restored on Sunday and full functionality on Monday.

Tomi


From: Sarvela, Tomi P
Sent: Friday, May 20, 2022 11:38 AM

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


--_000_CO6PR11MB56362A89E66B2EB94660D626DED89CO6PR11MB5636namp_
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
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
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
<p class=3D"MsoNormal"><span lang=3D"EN-US">GFX-CI will be quieting down to=
day for hardware migration.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">New builds will be stopped soon=
 to drain the shard queue.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Existing results on <a href=3D"=
https://intel-gfx-ci.01.org/">
https://intel-gfx-ci.01.org/</a> will be available<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">during migration.<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">CI data migration is estimated =
to take two days. After syncing,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">functional testing will proceed=
. If tests pass, partial functionality<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">(DRM-Tip) is restored on Sunday=
 and full functionality on Monday.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Tomi<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0cm 0cm 0cm =
4.0pt">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"mso-fareast-languag=
e:FI">From:</span></b><span lang=3D"EN-US" style=3D"mso-fareast-language:FI=
"> Sarvela, Tomi P
<br>
<b>Sent:</b> Friday, May 20, 2022 11:38 AM<br>
<br>
</span></p>
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
</div>
</body>
</html>

--_000_CO6PR11MB56362A89E66B2EB94660D626DED89CO6PR11MB5636namp_--
