Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3B61D19A80
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Jan 2026 15:58:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCB6D10E4E9;
	Tue, 13 Jan 2026 14:58:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h3I/1Dqk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F06C10E356;
 Tue, 13 Jan 2026 14:58:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768316281; x=1799852281;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1YnAIgy17VfWlcD0pBgtLcTcaoRVKSD9YrU0STv+hZA=;
 b=h3I/1DqkprILcolGo945jwb3N/RXTgeVsDsRHY+nz4OEhEL++rkpy4EV
 1B631k//hSDwlx7kU795NBjulgMy0En4i7abtgF7BBiuMxZ0Ufv4FBpgn
 qhpmbn41bCBHnO4G6yG2/NXuXcNhK3aQDaDMFCipCg+EDaGUc1zLB9cBt
 eU0D6IXGGdkPkSyu6wFtNKMpZvkmahR1yAENF1Ng2rR8TsVuAKx+KchBA
 NusxTr3gG3TZKlc0QzpTl3dIGkbDG8/hr11Kxbj3hh2adyOV/aya759R8
 ikVulTZmbAzu89iJHKYk9kk6CVSs3K8Qa4wHeU/FQroDu3gSFchJG9Gea Q==;
X-CSE-ConnectionGUID: TJcwkG0uQZaGjXkH9tlvqg==
X-CSE-MsgGUID: 4rZkksQFSXSqK4OX0hw5KQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11670"; a="95076224"
X-IronPort-AV: E=Sophos;i="6.21,222,1763452800"; d="scan'208";a="95076224"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2026 06:58:01 -0800
X-CSE-ConnectionGUID: MKgbReLVSsG5S7yFPpmRaw==
X-CSE-MsgGUID: euaHAkgTRayi0vVWfddVrg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,222,1763452800"; d="scan'208";a="208563074"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2026 06:58:01 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 13 Jan 2026 06:58:00 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 13 Jan 2026 06:58:00 -0800
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.12) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 13 Jan 2026 06:58:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EiqCIhp4ompuqIS4PsVhJp71nIIx+liqXc1/vgHDshtOtIfCiggCHBXa6ZP9CIlOVrBymvWLQqw3DSq4PtkM0D3v86cq5OeStLDOUIBOsL/R6A7zun/nyKlgApQLmatNo+m4UvSvtDZF3Ewnxk7dy5n0jnpc8MR1wU6pGplcou5Ix/MFLjBVpYkWe8KS7j9jH+/JYniuhlakegBXKAjjhp/yWHRKuy0eJJDQ/psnjLX+2J5Ef6VHLphO8lgCOk4yExZN0bOAfSh4cF3cKdK9hl9+ezOJk+Yj4n8idfO6g9AvN6nJArWe+hQ0+2IYPgMmZhsgOpUU2SU/s1b2RCNtlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Oa9qfKtyz+AY/COycBASw5V6M9uaD8XSgzKCHCaUgkI=;
 b=k3GJsBJqw5u2cwJ1a1XfC9ZmG/1yhmyXL1hqaGx2Zu1iBh30cQMelUpj8NAo26jHC6Sxk4eoCa9dMHA9zWxpV9u3idARqeuLUXlwNzOItTGrxxfEt58T6fnIsQfFlJEGN9Iz6ML0WZT3Asb/JVXW3ktFKZr5KL6VplPduxXOJ7DK/rYLgN5b2Wwca+Yc8rsFIS14DbS1Q3T94VbKV8ESROMRDCb7vrgp7kG3SkUR+r3HbHRNeJYQTQmGrud8ZzCdAfCfvTXoVy4zr0jyMpix3ZJzoQ956F0ePdnk3gVYQFbFbZch1YUF4Hlebj02uPf125QPY6Vd0QbO0WmwFsAcfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SJ5PPFEC87B8781.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::85c) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.7; Tue, 13 Jan
 2026 14:57:56 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66%7]) with mapi id 15.20.9499.003; Tue, 13 Jan 2026
 14:57:56 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
CC: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 12/15] drm/i915/lt_phy: Add verification for lt phy pll
 dividers
Thread-Topic: [PATCH v2 12/15] drm/i915/lt_phy: Add verification for lt phy
 pll dividers
Thread-Index: AQHcb2npM9retNVBAEqB1CUm8Ov/Q7VEtTvwgAPECwCAAOOckIAG+E8AgAAF2dA=
Date: Tue, 13 Jan 2026 14:57:56 +0000
Message-ID: <DM3PPF208195D8DE1F2B741A794F16E2DFDE38EA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20251217151955.1690202-1-mika.kahola@intel.com>
 <20251217151955.1690202-13-mika.kahola@intel.com>
 <IA3PR11MB893722B40977A210F1E94BD4E387A@IA3PR11MB8937.namprd11.prod.outlook.com>
 <aV_AuH7hzqOfr8ev@ideak-desk>
 <DM3PPF208195D8D430C5159B9CBAFBC1E50E382A@DM3PPF208195D8D.namprd11.prod.outlook.com>
 <aWZYcKFk0glTCZGn@ideak-desk>
In-Reply-To: <aWZYcKFk0glTCZGn@ideak-desk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SJ5PPFEC87B8781:EE_
x-ms-office365-filtering-correlation-id: 7c57f4b6-9928-4f82-d636-08de52b422f0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?Ys+5nBpnU2izHaias7P7KuOPOa0bOmBUNVDUltRO2I1uR0IrBVQ8CZ0GFF+j?=
 =?us-ascii?Q?MDAWSIdDRRcKGNd+VbT3J/bH9W0Vd8g4Te0kuqUj+11XydIVi0f0mOhclUcZ?=
 =?us-ascii?Q?PK7/70TPA32iMGzAx7RuLU41Mso5hgNb75AOHcLQOhAOQuJhsnKCj/En3f7p?=
 =?us-ascii?Q?ff2kcOLxhzhj/M3tMr3kYVjnlSPiqsv9Fq/3DFHjz8+z1s9gyG6gMsD5ofZr?=
 =?us-ascii?Q?VuzllulUqJW+l42tGibc4G+Ewmvj9kzgTFeouLKagz5zurAy/BI3Px/xTpMe?=
 =?us-ascii?Q?ui2OHBlDDxjBILwahe2afFLUA71x3VG5tZPmHFl1UqUokHY3qD1I659DXuf0?=
 =?us-ascii?Q?b4ZREmTun5BTtS6YyTE1pvsnnmVEBxqKEwR3VdJ1X6P406UXoRBh2s9vBuyS?=
 =?us-ascii?Q?p95hoRWD/14wZk0Xe7LOqPUgMIUnX8Zw2JTbSrU1jYX1NzEXpmsFViZbt6L2?=
 =?us-ascii?Q?kc3D5LqL28TEJRIIkkJ+zGCsRk+nHPqThyJZ99cIdehGnjSMQJpA89giuSN+?=
 =?us-ascii?Q?Ebh4/OOLt7kCQANzFn0AJlc6jP2JKfdDnRVx49/meCnfzRJcuiQFj/v5kUcL?=
 =?us-ascii?Q?JldWtuwg8Ifu1SONuawiEBFptU27laNhfEwaVRksp36wtRtkGN7Tj+00kLAm?=
 =?us-ascii?Q?cdKKe/sBj/5I8TCUAAGNyDUCTGQaWm/oz67mRfsg/uMB6ZZ2jsdcfioh6ntn?=
 =?us-ascii?Q?WiW/fpNzAyqDxY+Sdp9K673wodyEtiqT6EVFoMc7lPIB2m2pYP8B/hPwjqJf?=
 =?us-ascii?Q?cuIEDAJhJra+ZlPv/0wiZzNvH1GY9wM9VApPi59nCLSbXbFv8O5WUgHOILHZ?=
 =?us-ascii?Q?NvT9il2KFfTCq2pcJu3QbeuARiFrQuQAkks9Epd+s/CerFyIez7YS5XROWgT?=
 =?us-ascii?Q?lCqUjLla+ORYhssB/KiagY2E3mpNW9fIltAoomy1wZbXAA3gubzDfGBuewiN?=
 =?us-ascii?Q?Ncljg8qX04z1SaIeb6RgiviFdjERKB9A+Wrux5A6hHY/e5YkKugx8nY2KXgS?=
 =?us-ascii?Q?2qjhLHC+bkgIoQ76IUBQDkXSD13cc3TgBz4YVWUA/oFjXmoKdsYnidihozYe?=
 =?us-ascii?Q?RFdXX0mqMK8QZrPLuMu8cOi00+rEJR70Jl0vyAQh4FaLaRtpSjHIlSc1pPtU?=
 =?us-ascii?Q?8bXTRd/Pneo++YDqXauQNXFmOCCzbceTB7uFKYjElLwk82hf59NwlaysZGXu?=
 =?us-ascii?Q?rdXLFqK8Tmgd1s1yQ0pJG8eAHofoBJSBx6BNlIeRhNQ0P/M0Pz8cvesPKUhM?=
 =?us-ascii?Q?scozaQpFO/7YTw1WoY3W+tNy6P6le0JfeRPeK9luWKSE5UgR+xpNlmSEM7Mj?=
 =?us-ascii?Q?qAKeiNCEHd/YAVg+f7tHQDWN8fouvbI9gvD3UXBZaIgvLM35zd9zE2XQUh8y?=
 =?us-ascii?Q?9WKxcbbwASc0vxQh6F9JkKkiPMtf8myFBTy09ImCek9VPBtxpqEzQ+I9Fbko?=
 =?us-ascii?Q?O2L/KjpBw7ano5TuO3E3xFVmfc7WomouvPS9KEXVFBcZjNeD+ecZAUkB5s7E?=
 =?us-ascii?Q?C5hgNQqVYeBzE99hpvlGwuC9OR6jjfqRFFgC?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?1SrS9o2/bCUHr+j0wVBVXGeWZT+dvpDu/vPH05GlLilksYfgii8zbjWOPNE/?=
 =?us-ascii?Q?LcCfFNYa5cOSVFMN+SAxWeLseZWjj6l6KoyKJLkVGAejk9ABTx6PRLLluQtp?=
 =?us-ascii?Q?UUHNPV5j3IAH98EnVi+9DG33UXWYbMokDcTmE2S7nZtpGNg4gA7jGj8pcLdV?=
 =?us-ascii?Q?rnYvLHm4Nr+DiCcQ5xGTLYpvnBsAjQW+F17JQU5apON/dB3xrPVAOjJKEOOL?=
 =?us-ascii?Q?3Qp67cwP5Dhd/pFoIJ6rOGaUcGckdpTU8upIUZqb72+KqRy1CQ/5hk2dXku3?=
 =?us-ascii?Q?BqeQPUMtiv+0GtXTqzAwRhjTLgeti7Y19Wqs82OsJtSmmO3QBKozv92NDH2i?=
 =?us-ascii?Q?6MF9Wep94e6gi2FqxGfBflx0mRSTlEPDoeOQCX1/sJhkWmM0YCoh45NFiHwV?=
 =?us-ascii?Q?1Cttw/HofnEQ/caC0/t5ARv8Tc7EDbEsEcN27OuascCCUFqMgqhhGFAZICQm?=
 =?us-ascii?Q?8PtvaAfU2Xdfibg+Zmvb/QzYguw4ZL2P2Y954K00PKaQxtMR9DNew/n7Bbdn?=
 =?us-ascii?Q?ls692GA9eSJD38D5aR8Np43IlxQvFxqXuopSe+BvroOEqJW9FxSUAOY+CZJ9?=
 =?us-ascii?Q?gVuMnQNUWVHa0r+0602sOer7udQsatiEo0VKPjtzcfyoGSXGVAmgs4/Cuquh?=
 =?us-ascii?Q?KF7XvRmpybE1UNEgf1hwo1wax1cSM703UpmggryLHNyhymHYi1+mq19YJYzH?=
 =?us-ascii?Q?u4ueSi0Cr9O+/jlwJvEkhughId1IG1MkW16ezODu0KdxVkN5KuPBBA79ZFRV?=
 =?us-ascii?Q?Ic9ossy/JYP5aiDnQsqv9cl3qgMLYLq5IwSE2mwutS8FeO8JxnKwfjKlzW39?=
 =?us-ascii?Q?eX04kRv1GaMYVVlqxzP+7nG68VnoEbsOKNM7vv5xMpQWcgNafUlc1nNU6kdI?=
 =?us-ascii?Q?hMyrzjbUS9+VxXPSnZEg0YJaD+Ene/ZQI3mYO0Fl1eIPe2T7Y+6lkbKvgMOl?=
 =?us-ascii?Q?8AM5VDC2GWoRhTXrsJv2oHnykCapPeJ4mRoXfNUq2ZSV+zgpjxTGVcksvjhE?=
 =?us-ascii?Q?EGfB2vS6gG2r4/ppRQy8huvQ1fxX6RI7M4KXWrJjGu4o0N13HaolQ8AFTrfA?=
 =?us-ascii?Q?FxwOzvZULRzqHmlUQaapqsQQGXii5otBVfXnAQM6eKKHrW0nscCcn217gQEi?=
 =?us-ascii?Q?KD1AUUuM07X+XRXeZU2cJjofHDEk0nPP7zz4GGdEU12iOuM2YcXwfS/YTuZb?=
 =?us-ascii?Q?E6x9w+aDXJb6COfIPAJAeaCPnZ7Q0sisUmOI4tK2FGzG9aSfJWgpMGwYe3cm?=
 =?us-ascii?Q?6MBw+BBGQg71rbY3pXhQ3fYtjky1cP1OKQIaDeYmwj9BYU6E8X4q4c4MCr6O?=
 =?us-ascii?Q?zr/TzbaJSAy+RqC5p8j+FQmXvGIrn5ZemQ5NTFfZUJ/3A/16Je5ByI2xlEUD?=
 =?us-ascii?Q?9CeptL3yBZGmu5Ny10D4zP26zASt17qGu2gkH0oaeK0XlKib1nuuo+2RUGZo?=
 =?us-ascii?Q?N0azPn6rDTJWSSmMe/LO7oRpMNJHD7PwLIFkPSvQ7+KXMMbJOG8R0mLk2jXO?=
 =?us-ascii?Q?qjiF0xxeYdCUDx/E1//iv1Qbf993K8XouUCbAZ69iHS3Oovf2kVGxCNMARVw?=
 =?us-ascii?Q?u4+t5272NP0GmTV/7WoHgis19vBDCTQLPLkZHYOBuZfMq1wHOeBnY3fxRvE6?=
 =?us-ascii?Q?+Lzf2CiXAmu3uUtBM6n5d1hhlm+LfVu/Q9L0xy5/g5fz1C2s6KMu1V38zrfs?=
 =?us-ascii?Q?ULvGPUrBfSkgY6FnqNjSqtfeP6GROJJe22+luz0cE/46Ut/9ssp3LeTvQSpQ?=
 =?us-ascii?Q?3w/ijLUhyw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c57f4b6-9928-4f82-d636-08de52b422f0
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jan 2026 14:57:56.6387 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8vpL2fDltRkXlOlSRuMqaTJ/oZWZAobhwLnpMh7smpK7p4xgjHPTe9XoEl7XIk5QJGLksAIZOA9t1oGy+JByvw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPFEC87B8781
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

> Subject: Re: [PATCH v2 12/15] drm/i915/lt_phy: Add verification for lt ph=
y pll
> dividers
>=20
> On Fri, Jan 09, 2026 at 06:12:25AM +0200, Kandpal, Suraj wrote:
> >
> >
> > > -----Original Message-----
> > > From: Deak, Imre <imre.deak@intel.com>
> > > Sent: Thursday, January 8, 2026 8:06 PM
> > > To: Kandpal, Suraj <suraj.kandpal@intel.com>
> > > Cc: Kahola, Mika <mika.kahola@intel.com>;
> > > intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> > > Subject: Re: [PATCH v2 12/15] drm/i915/lt_phy: Add verification for
> > > lt phy pll dividers
> > >
> > > On Tue, Jan 06, 2026 at 05:07:25AM +0000, Kandpal, Suraj wrote:
> > > > ...
> > > >
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> > > > > b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> > > > > index e33f6f48a6ce..13acfc7c0469 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> > > > >
> > > > > ...
> > > > >
> > > > > +void intel_lt_phy_verify_plls(struct intel_display *display) {
> > > > > +	intel_lt_phy_pll_verify_tables(display, xe3plpd_lt_dp_tables);
> > > > > +	intel_lt_phy_pll_verify_tables(display, xe3plpd_lt_edp_tables);
> > > > > +	intel_lt_phy_pll_verify_tables(display,
> > > > > +xe3plpd_lt_hdmi_tables); }
> > > >
> > > > Same thing as the previous patch this is not needed.  Moreover we
> > > > do not go through any algorithm for edp and dp tables for LT PHY
> > > > hence the Rate always matches. This patch should be dropped.
> > >
> > > Similarly to my comment on the previous patch, the tables entries
> > > should be kept correct even after they were initially added. So
> > > please don't drop this patch.
> >
> > But testing DP eDP tables still does not make sense here since they
> > don't go through the traditional HDMI algo that CX0 go through the
> > clock rate in a way is signalled just by a single entry of VDR0_CONFIG
> > So other than verifying table for HDMI the rest need not be done.
>=20
> The LT PHY DP/eDP PLL determination of the PLL clock from the PLL state a=
nd
> the inverse determination of the PLL state from the PLL clock is just the=
 same as
> for HDMI. The fact that the PLL state is just the VDR0_CONFIG register va=
lue for
> eDP/DP vs. the PLL divider values for HDMI is odd and should be looked in=
to
> and fixed in my opinion (so that we know that the rest of the eDP/DP PLL =
state
> is actually correct), but this difference between eDP/DP vs. HDMI is irre=
levant.
> What matters is that the PLL clock is calculated from the PLL state and w=
e do
> need a way to verify that the PLL clock matches the PLL state and the fun=
ctions
> converting between the two are also correct (and all these things stay co=
rrect
> even after the initial addition of the table entries and the functions).
>=20

Hmm,
LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> > >
> > > > Regards,
> > > > Suraj Kandpal
