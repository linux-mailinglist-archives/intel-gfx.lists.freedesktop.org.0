Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A69B956930
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Aug 2024 13:18:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0A8810E244;
	Mon, 19 Aug 2024 11:18:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XPcgXyMN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DC1E10E245
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Aug 2024 11:18:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724066336; x=1755602336;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=h2GPz+GoHUNF6pNEAJkAT56pJqO9EOGeyvZUFvAl0fI=;
 b=XPcgXyMNwIsJvamK5NtCsxiPjDikE/zJnZc2CBXthH0T+nTKXLKOf8Iw
 lrsteLx51k6WyLwmDZguPydh/Ibrg/RmjgGJ7AZV6IF6y6I7CDZdvY3JC
 TsG6Cm+JpDBxecs22JwdBZUt8RvPTZ7cdw+VBXaFcVdgglhVkdADj7+RD
 BdY6Q2xFSQxtepB+c0Z3IkrCY8AdE3Xv8e4XbIu9knh6vA9pH8vrNF59s
 wQKTNocVQr04cTD7OKCSyLw3Ex/hYAmotmPcYbg/ScxNEjgadmcR7pUhr
 HpshfkdM/FRUWt3eFa7a0OH1q5OX3+D2fcE18LVcJMzptjN6m4t7vy8Pn A==;
X-CSE-ConnectionGUID: T+zZ16NDTo2oEYUNNciDzw==
X-CSE-MsgGUID: SB1q9VRLQ0Cn1AP7PHm0tQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11168"; a="26063315"
X-IronPort-AV: E=Sophos;i="6.10,158,1719903600"; d="scan'208";a="26063315"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2024 04:18:56 -0700
X-CSE-ConnectionGUID: aZNfy54vSm2gKBwjMQWNEg==
X-CSE-MsgGUID: +qFlXBt9RtaqGMI3sMn5Dw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,158,1719903600"; d="scan'208";a="97818204"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Aug 2024 04:18:56 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 19 Aug 2024 04:18:55 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 19 Aug 2024 04:18:55 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 19 Aug 2024 04:18:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PyMG//854CsUIwQQSrde3Hyx5Fr86KOISeEHa/sWOmEv7RjzdwTVjyL+a+/8ATcm1F77KQsQzSx8P45PbzeB+ZteqnWI516fRnBSSzc9xNt2csTzN+HrPD5bcCee0xIQjdZ56HvIv+sjBBzOJIoWBTzFcN2T+hxCPySj2Mt1ASEXAZzkQBrJHq41p53nkk0D5Q5wxa7pWwRdsFHXayBiclOn3MgybX4TYExJsmxB2mgBete3M2yhk0qvS02FRnse1pkP/Hoz7+3VPzysPH+SMTMJ8IBnsKjKiARfavfdb7P8bWffNB7i3e8VtYKsw03FSeeA9N0+2x5r+07FfpBx/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qHsRG429+ZO0OFKHEsogAI1PPu9xX9m8xrJneX9XxWQ=;
 b=DBu1mib3GNPh2HHbQc7ck849g1FZODLFrISklNyej1tqJf2cHGxjfbRqZinjSPWIJFMnBGvXc9MItWkCnJ5e5ElyrukQLMIMawVN9hdSElDS95Uk6vH0N6vVV17nHQnwhDa17v+jqaR6anfG4nbuchNCLIjHKjrOUoJke6YmxFu/ndhSIEpeQZu8ty5h3QE22vWr4kU8riXvmioYTBUQ5DnHtkJmdpJlT7qJ8xPSFaaUEswX8pZ4eHiHAoOb/qZSHvoK3YXj7U8/F1Y7ph5f+ZZHQ8GopT9gcbpZHtZ8d9foSHxB34Jox9e5A5cVAdUODP99LuhJADMAlSoOJAXfUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5867.namprd11.prod.outlook.com (2603:10b6:a03:42a::13)
 by DS0PR11MB7997.namprd11.prod.outlook.com (2603:10b6:8:125::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.20; Mon, 19 Aug
 2024 11:18:52 +0000
Received: from SJ0PR11MB5867.namprd11.prod.outlook.com
 ([fe80::dc4d:b84:3424:b7e0]) by SJ0PR11MB5867.namprd11.prod.outlook.com
 ([fe80::dc4d:b84:3424:b7e0%6]) with mapi id 15.20.7875.019; Mon, 19 Aug 2024
 11:18:48 +0000
From: "Gote, Nitin R" <nitin.r.gote@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Nayana, Venkata Ramana" <venkata.ramana.nayana@intel.com>, "Harrison, John
 C" <john.c.harrison@intel.com>, "Wilson, Chris P" <chris.p.wilson@intel.com>, 
 "Upadhyay, Tejas" <tejas.upadhyay@intel.com>
Subject: RE: [PATCH v10] drm/i915: WA context support for L3flush
Thread-Topic: [PATCH v10] drm/i915: WA context support for L3flush
Thread-Index: AQHa7UX7433rpMl04k+xFuW+hpUCFbImoV2AgAfUjrA=
Date: Mon, 19 Aug 2024 11:18:48 +0000
Message-ID: <SJ0PR11MB586727D7D9856A051C0EB77AD08C2@SJ0PR11MB5867.namprd11.prod.outlook.com>
References: <20240813061657.925443-1-nitin.r.gote@intel.com>
 <ZryWU748yzXFf81B@ashyti-mobl2.lan>
In-Reply-To: <ZryWU748yzXFf81B@ashyti-mobl2.lan>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5867:EE_|DS0PR11MB7997:EE_
x-ms-office365-filtering-correlation-id: 8bd40bc2-3f69-465c-e5b8-08dcc040b296
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?4xg5C8cYrnEMu01nXx6R/WqbhDD7xuuQ0zK5Cy3c4EWDk+rWYHxFcYyo7coT?=
 =?us-ascii?Q?RQjVVcJNWLYd0X5L2BFESvctX80HHyqH9lbsuFBAQyjx6smUaFVGqWspuTbZ?=
 =?us-ascii?Q?H5jdlom66xE4xdAKiwYQFRe7jv9X1wucF6Q9SIuM9tD0P4vl5YckBT+DfyNW?=
 =?us-ascii?Q?Z0QpAExJGCIIKZk1p4vWsUHb9Xa3ES46spbXpxOd9DqvA4/uEJv7CTvKvMB+?=
 =?us-ascii?Q?sLWASHGO4lOB4JrVrR2mSTrQqwnNWvoHPXgkpBJbqVsc0t07JQY+YhlnGW8f?=
 =?us-ascii?Q?43ufez2DCKtO1lZ6x+1Knw9uqvjhQiSWLB8E5vtPKlMX2tQuKwe0GwiE0kSM?=
 =?us-ascii?Q?ueCDTSxc9wCTLMxQ0B6T+pPVT5cGTa7Z/gX1MCX9VTPxQSEJSn/bIoXG5Ddv?=
 =?us-ascii?Q?C8Dzk5QmY5iZTHMJ1SXCew3PWGI/kdKCPOzbSocXOZBQhkOtGzYzbx+qoABD?=
 =?us-ascii?Q?Q9UoU67M394XI9cw4F4khFF+cqtBDfa/v5JhsIu1F49LKZ90Et7p2q3OkDuU?=
 =?us-ascii?Q?SL21qsvwDJlXXcb6AApaoZQlIWWRhGoj/GXf9XG8hAG/JlqHf3C8Y0yZ+FqZ?=
 =?us-ascii?Q?GRBjT81vkfvCvglD3lHu2GxJ3r3MP255i3ijh66I6/aAMg/dn/V9sIurMGJ/?=
 =?us-ascii?Q?dlKK6DZTAKkKqlmKxTitNA5eFrOHddlnFa8VLcuetKJSF1Nl2DmkPV0K6O4R?=
 =?us-ascii?Q?S9r8dPAxfpOaHLY7QAMc51bitQTNopwlb4pU7xJIymmFFTuX09Ak6f3UEXCI?=
 =?us-ascii?Q?quiSvs7H+mowPv1luQpMgL23AKjUMtBlHiuYnp6Zl13NzJ4nwi54fj9+cAh+?=
 =?us-ascii?Q?RGi2lAYg1k2XMkUsP3p+oKNYh4yjHLtGmP9ZqN/akyH4oxq3xBY+QgE/SBv6?=
 =?us-ascii?Q?/bPOlsymygZ461VRTF2XeDJy3LCXYndgb5e7BmMztkLrnCS7XdDePs9QFP/q?=
 =?us-ascii?Q?WOkWzMGCcA6X8tKIzZI1cpNzD0QxGJsJ2GEl7qorZrzFMEy8X9IQ4MChMPUv?=
 =?us-ascii?Q?gllYU+P52EdvtiQ0dwX+VkqL27rDn1ZIG3mJ8uaXjVmotQLScTe87sLr0Nqh?=
 =?us-ascii?Q?goWu6OgHB7hzFBO40PQAdxAQEIACQmFr4d6MPCfuz2hsDGdqEB9uimF7V91Y?=
 =?us-ascii?Q?pXYRrtikasypp7C+kHvplYdDmtOW0erPsJYTfoMXNNBJpCBoR11JvqBFrdmp?=
 =?us-ascii?Q?taJqwLUsagTM4QjEXPpoer1v+vmLnzZHusYwRsKHMX+kYBxN3ZbdujOrrmYH?=
 =?us-ascii?Q?WwqRXy64oKaruU47ITe7Kz9D/lYXt6vsLBTl61gDESw6TnPCgR5PcpmYMX1V?=
 =?us-ascii?Q?SdNgixSLjhdk+gPTXsfeFsiupo6VjdQ3waV92uB+VOu7UPaR1QLe+EiEV9yR?=
 =?us-ascii?Q?VLXR54ChhpztrPTWj0gDXpgKQVUNuwg3Mx/6fWgg4qYqHpVB6Q=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5867.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?b7j2EbNnbNLvq30b+Y+0Ra9iaTVGrFK9lnsX5z0vqWKUos+jsB/quZs7ECB2?=
 =?us-ascii?Q?jRayHRM/M6bLmZp+GYwj8DZ14YeyqquePZ/6cQqfMkrDG/r/fbBXqWknlJ2a?=
 =?us-ascii?Q?LbUellHmIMoEX89qPJPh2CvNW7ewB5RYd+fX1g9mMJ1kv5QFqfCVO6RWUqOU?=
 =?us-ascii?Q?qeY2rAws5ewsuOkZcchos1VDUh82oHfTl/fJ79uD01cCq9kHizSBqfFo6Xeh?=
 =?us-ascii?Q?QnW4bWdMZ5uV6mEwYVKoXJz72xEHRz64she1V2nxvdlEgSIOVpmqDH4lvcgD?=
 =?us-ascii?Q?oL0xwQS1vqcBz9jbvwYNdCXITewqCW3bvrYqxQorF5Wzhsj986ZwsnhRMGGJ?=
 =?us-ascii?Q?Hai2+Myjcljw6k8DF4cMzh/nYCbpzdR4TsWYJDWUAcsAiVRmVM0uuFEqWtLo?=
 =?us-ascii?Q?LESGuAKpHmuRAKc2HYyKEV3fmSEjkbDoHRcRtMkvB+trbx2PVr0soESZuON5?=
 =?us-ascii?Q?ZYn8fhePqNVC5kY5db7nE4b3gbLZ+kJ5+mj11MQKjh9UO/nvlSNpxwiSDQJL?=
 =?us-ascii?Q?LCe/OGZuFEZzsJCNNKn5Gs4kX0d8Sb0Wh+mnSfMT456wB9vBGyHEhVB/kP6+?=
 =?us-ascii?Q?Cd6yYTJMpcfz9yvduUPg0XmXeKdroMhd4zLpvjLqHHd7sjAcFlAzB00CE/QE?=
 =?us-ascii?Q?iwAsphK5wkxJV54K3uEudeoBZRXksyryV5dX0Eu42ztfBLVJs/9bPk5e5ARr?=
 =?us-ascii?Q?BGxXHQzk2LXZuB8yYfH8OnSWkqONMDEtfO0mVTpWIFDPwd8Hw+pfOBL8OOl2?=
 =?us-ascii?Q?XjV95lfi9RMkhdZZgi1tiId9flgakiIPjOTURoKnMcBDz7eaSlYhct3bagcX?=
 =?us-ascii?Q?Iv6XNhD1L/mAawY1kuNvKO0Si41oRAYrOcou6xtFa3FteCdAPkbvPpWIytTg?=
 =?us-ascii?Q?1XONv50QdH5bUZHsEbl0BqsP1wZwlRd3RGdRStaXFhhP09GOCF0elKy9d7yt?=
 =?us-ascii?Q?fejaByLCJ+vLcGez/YTUOhW9Pjey1SyexrE2kcm1Qb46pDIaLF/COZ7vp+wb?=
 =?us-ascii?Q?1CozebQJTUQx6LTIzAYFOec+LKMr9Ot+NJdgLT6FfFOEkZWL4mksAXG37qUS?=
 =?us-ascii?Q?eQdszvYKJ4jZbQ/wKqNUDJxYscliM87rR04WgR+I3D5S47HlQQjV5FV6QNtk?=
 =?us-ascii?Q?S7wjCmEUG2/hZw1YvObENnBT3dmuyjM5m6n/0KkguAAdkCwHXtefrtutSo+8?=
 =?us-ascii?Q?xG8jVkDumBhqU/qYiqYw6bCmwABdYLIkYn9p2vtH4+bcdIP0MnyniETKlmOE?=
 =?us-ascii?Q?shgoQ97Id1SNpw3e9+u3IZJPvwnRtdl+5FaBcQOwA80zCqsBYAtpFRVtH09F?=
 =?us-ascii?Q?rAaLT9pJAFb7Gb3wj7z5f/9rvgyoQzuHbkXY7w8zDu2Wb0M1vv/DRMj+DBgf?=
 =?us-ascii?Q?72XIk6R36ZV9mHRR3PTV0HLGs4riWtARQypYeviBrnWckquFuc9qodh6M30V?=
 =?us-ascii?Q?lEyk8Oh3UJofm4NTLduAPjjycn8NOMx2h/Spw6CETSpL9OBv8MMKxvaIWtyS?=
 =?us-ascii?Q?Gx2c84agyCdZIZplSFMlvYf5Wz7CYv10n+tGOt8Nwo6IgLLSLBSWk2Ryp9Vi?=
 =?us-ascii?Q?KzBNtpbJd06iAGdJa8kWwuyLROnq2h57/IPC7KTv?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8bd40bc2-3f69-465c-e5b8-08dcc040b296
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Aug 2024 11:18:48.5964 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tCgqhnOCorVRrg7VpBmXnYiTwb4b8K+vOH1FvwWGSca9xFBqQsHM7yUKJc9/ie3/bsPeqz4bNDmB47WxdPurew==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7997
X-OriginatorOrg: intel.com
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

Hi Andi,

> -----Original Message-----
> From: Andi Shyti <andi.shyti@linux.intel.com>
> Sent: Wednesday, August 14, 2024 5:05 PM
> To: Gote, Nitin R <nitin.r.gote@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Nayana, Venkata Ramana
> <venkata.ramana.nayana@intel.com>; Harrison, John C
> <john.c.harrison@intel.com>; Wilson, Chris P <chris.p.wilson@intel.com>;
> Upadhyay, Tejas <tejas.upadhyay@intel.com>
> Subject: Re: [PATCH v10] drm/i915: WA context support for L3flush
>=20
> Hi Nitin,
>=20
> I had a quick read through and just few comments for now.

Thank you for the review.
I just came to know from @Ewins, Jon in VLK-35222, that this WA is no longe=
r required.
So, I will not spend time on this patch anymore as it is no longer required=
.

Br,
Nitin

>=20
> On Tue, Aug 13, 2024 at 11:46:57AM +0530, Nitin Gote wrote:
>=20
> ...
>=20
> > Another key requirement is to have this context dummy mapped so that
> > the HW doesn't generate any PFs. This H/W issue may cause L3 cached
> > GPUVAs which belong to previous context to get associated with the
> > l3flush context. So, w/o dummy mapping, HW is expected to PF whenever
> > these stale addresses are referenced.
> >
> > This patch has been co-developed with John Harrison.
>=20
> Please, remove this line.
>=20
> > v2: CONTEXT_WA_L3FLUSH bit set calling function change (Chris)
> >     Handled ce and ppgtt leaks (Chris)
> > v3: s/setup_dummy_context/setup_wa_l3flush_context (JohnH)
> >     Replace firmware wording with IFWI (JohnH)
> >     Inplace of REG_BIT(31) use meaningfull BIT define (JohnH)
> >     Replace few GUC #def with enum (JohnH)
> > v4: Replace 'dummy/wa_l3flush' (JohnH)
> > v5 (Tejas): For old IFWI, print warning and let driver proceed (Matt)
> >             Adjust IS_DG2 check as G12 does not need this WA (Matt)
> >             Use correct WA# (Matt)
> >             Rename APIs to dg2 specific (Matt)
> > v6 (Tejas): Drop ppgtt->vm ref right after context create (Chris)
> >             Change variable to destroy context (Chris)
> >             Use MI_LRI for multiple reg ops (Chris)
> > v7 (Tejas): MTL does not have BCS0, handled it
> > v8 (Tejas): Resolve recursive merge error
> > v9 (Tejas): Use s/engine->uncore/engine->i915->uncore (Chris)
> >             Modify no.of regs 4->2 for MI_LRI (Chris)
> >             Unref ppgtt->vm only for err
> >             Modify GEM_BUG_ON for dg2_10/11
> >             Handle return value for l3flush context setup
> > v10 (Nitin): Rebase this patch.
>=20
> In which list have been all these versions sent?
>=20
> > Cc: John Harrison <john.c.harrison@intel.com>
>=20
> Replace this line with:
>=20
> Co-developed-by: John Harrison <john.c.harrison@intel.com>
> Signed-off-by: John Harrison <john.c.harrison@intel.com>
>=20
> > Signed-off-by: Venkata Ramana Nayana
> <venkata.ramana.nayana@intel.com>
> > Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>
> > Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>
>=20
> ...
>=20
> >  #define I915_GEM_HWS_MIGRATE		(0x42 * sizeof(u32))
> >  #define I915_GEM_HWS_GGTT_BIND		0x46
> >  #define I915_GEM_HWS_GGTT_BIND_ADDR	(I915_GEM_HWS_GGTT_BIND
> * sizeof(u32))
> > +#define I915_GEM_HWS_WA_L3FLUSH         0x48
> > +#define I915_GEM_HWS_WA_L3FLUSH_ADDR
> 	(I915_GEM_HWS_WA_L3FLUSH * sizeof(u32))
>=20
> please, use tabs here.
>=20
> >  #define I915_GEM_HWS_PXP		0x60
> >  #define I915_GEM_HWS_PXP_ADDR		(I915_GEM_HWS_PXP *
> sizeof(u32))
> >  #define I915_GEM_HWS_GSC		0x62
>=20
> ...
>=20
> > +	/* BIT(31) unlockbit manage by IFWI */
> > +	if (misccpctl & GEN12_DOP_CLOCK_GATE_LOCK) {
> > +		drm_warn(&engine->i915->drm, "MISCCPCTL lockbit set,
> update IFWI\n");
> > +		ret =3D -EPERM;
> > +		return ret;
>=20
> just return -EPERM.
>=20
> > +	}
> > +
> > +	ppgtt =3D i915_ppgtt_create(engine->gt, 0);
> > +	if (IS_ERR(ppgtt))
> > +		return PTR_ERR(ppgtt);
> > +
> > +	ce =3D intel_engine_create_pinned_context(engine,
> > +						&ppgtt->vm, SZ_4K,
> > +
> 	I915_GEM_HWS_WA_L3FLUSH_ADDR,
> > +						&wa_l3flush,
> "wa_l3flush_context");
> > +	if (IS_ERR(ce)) {
> > +		/* Keep this vm isolated! */
> > +		i915_vm_put(&ppgtt->vm);
>=20
> Please, add this in the goto error path because...
>=20
> > +		return PTR_ERR(ce);
> > +	}
> > +
> > +	/* Ensure this context does not get registered for use as a real
> context */
> > +	__set_bit(CONTEXT_WA_L3FLUSH, &ce->flags);
> > +
> > +	ret =3D intel_guc_assign_wa_guc_id(&engine->gt->uc.guc, ce);
> > +	if (ret < 0)
> > +		goto err;
>=20
> ... you are missing it here
>=20
> > +	engine->wa_l3flush_context =3D ce;
> > +	i915_vm_put(ce->vm);
> > +	return 0;
> > +
> > +err:
> > +	intel_engine_destroy_pinned_context(ce);
> > +	return ret;
> > +}
>=20
> ...
>=20
> >  #define   GEN8_DOP_CLOCK_GATE_CFCLK_ENABLE	(1 << 2)
> >  #define   GEN8_DOP_CLOCK_GATE_GUC_ENABLE	(1 << 4)
> >  #define   GEN8_DOP_CLOCK_GATE_MEDIA_ENABLE	(1 << 6)
> > +#define   GEN12_DOP_CLOCK_GATE_LOCK             REG_BIT(31) /* bits[0,
> 31] RO */
>=20
> use tabs
>=20
> >
> >  #define GEN8_UCGCTL6				_MMIO(0x9430)
> >  #define   GEN8_GAPSUNIT_CLOCK_GATE_DISABLE	(1 << 24)
>=20
> ...
>=20
> > +/*
> > + * Global workaround keys.
> > + */
> > +enum  {
> > +	GUC_WORKAROUND_KLV_ID_COPY_ENGINE_SECURITY_WA =3D 0x301,
> };
>=20
> are we expecting more keys? Why a single element enum?
>=20
> > +
> > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> > b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> > index 7995f059f30d..b981be11a59c 100644
> > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> > @@ -834,10 +834,40 @@ static void guc_waklv_enable_simple(struct
> intel_guc *guc,
> >  	*remain -=3D size;
> >  }
> >
> > +/* Wa_14015997824: DG2 */
>=20
> does it make sense to put this on a different patch?
>=20
> Andi
>=20
> > +static void guc_waklv_init_bcs(struct intel_guc *guc, struct
> > +intel_context *dummy_ce) {
> > +	u32 offset, addr_ggtt, alloc_size, real_size;
> > +	u32 klv_entry[] =3D {
