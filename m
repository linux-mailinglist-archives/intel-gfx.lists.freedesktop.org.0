Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 144FEA4F835
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Mar 2025 08:46:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A850A10E718;
	Wed,  5 Mar 2025 07:46:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gDQhdN84";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF3DA10E718
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Mar 2025 07:46:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741160777; x=1772696777;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=J7peftRIDxZFBwh/hHAG2dek3vIGCOEpe/3yAY/dn4o=;
 b=gDQhdN84aOvPycpijAnyWck+enLuqfTnc6kWNL00EwxTkv6fmQDNv6oF
 q2pQ7JcXahdNB3d9zVu5pg8vjQp3xhdXkpIVWHLd0iRrqMG7ChQ/WY3CM
 +H72kuFkDcRz9pJgHpNJjlTfMv0GZ0ic73L95Y/znd/m/Z++hpEJ8Whx7
 h+x5ZyQhC+mF8NKnJ87AqTK9N8HQ86jj7lvZ1Xtpd3QNfD1rqV34uSGJB
 EJtwJ5znqs1cpzxYePl811oC/cSK867MtdvOrTeTIzkffgbnjIF8b7liQ
 7vtgv3AdpGhsL/xcrazIPKVVVPI+gqO/bgnhF5V1YI2uFVhmRjqIHWAGB A==;
X-CSE-ConnectionGUID: 5BTSL3EjRe2bgfScaiVRKw==
X-CSE-MsgGUID: Jb8UsPNyQSKAXYipqGJDlA==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="53099465"
X-IronPort-AV: E=Sophos;i="6.14,222,1736841600"; d="scan'208";a="53099465"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 23:46:17 -0800
X-CSE-ConnectionGUID: WoG4C2O1TL2oqjDphuNJXg==
X-CSE-MsgGUID: Fm3CleufSFiMhSOyzWH4jQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,222,1736841600"; d="scan'208";a="118618252"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Mar 2025 23:46:16 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 4 Mar 2025 23:46:15 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 4 Mar 2025 23:46:15 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 4 Mar 2025 23:46:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=L8/CVHXbRlgiMeiBQDoThyME4o0fUMI6+i+OUFBi0jW7o7XJIT4Q6FPzkj4HFLXKdmVppEtK0PUucOV9QxcgHMot/hUX1TJWRhOf2vLVIZujoR1SekyXnoznFtmCsROGgjIy6SqrMeLlcoV/+3jH6wNQ+aPLijqBZDlEi8Gc/L9z3IhnTWAF0j3lQH+DRS3zr0ZvIlbol4dEBxFMafClx6zapq6rAmALsGHsylxIEU/l3e7k9fDqa8PFKcF2nlQIRs2gvc/mjhKpQwRPfuSJrRIP07AK+T1d9QUxa3V7mAnqWS3trA0FSyk2ENcPWyHAs85yb64PcMNZkKeVb1QJGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x33GMFeUOgMEbV3URXIa/KhL//Ye3jxtsA1100sQ9ck=;
 b=gfvw6c7+QuTx2XYyAPwl9Oj8X5UlAiFMxky4KwdjbCoON6cTgqDDM3Uor0xx8+blpLqeaLmRuYaeIN5svVDFEbPn4IXYiV87Jn+LX3WAkrZ6XNRqztFOqXHyH36FgesTEDO43omfs5K6X7tT4qvSdyjsImkwNOCGWl21BXJ3HwRvzADBAcyn/QCInDes25brxNrgS3qPBW3TCDuRJ2oERF4xO9rJvYEip2qs236LnvIRoZMclwMARDeEiJiR+Nmn4xeD80GMQdLojflbpLBkC4zlpCEpQDsdA6bFKr4mhaRvjBaEi30SgKTfs2yp8bIgu4YwcweQtjXFj241lXG+pw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5867.namprd11.prod.outlook.com (2603:10b6:a03:42a::13)
 by SA0PR11MB4573.namprd11.prod.outlook.com (2603:10b6:806:98::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.28; Wed, 5 Mar
 2025 07:45:31 +0000
Received: from SJ0PR11MB5867.namprd11.prod.outlook.com
 ([fe80::dc4d:b84:3424:b7e0]) by SJ0PR11MB5867.namprd11.prod.outlook.com
 ([fe80::dc4d:b84:3424:b7e0%4]) with mapi id 15.20.8489.025; Wed, 5 Mar 2025
 07:45:31 +0000
From: "Gote, Nitin R" <nitin.r.gote@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Wilson, Chris P" <chris.p.wilson@intel.com>
Subject: RE: [PATCH] drm/i915/gt: Add a delay to let engine resumes correctly
Thread-Topic: [PATCH] drm/i915/gt: Add a delay to let engine resumes correctly
Thread-Index: AQHbhoJt+c2Zs12sTk2+5b6kTiUS+7NjF+yAgAEapFA=
Date: Wed, 5 Mar 2025 07:45:31 +0000
Message-ID: <SJ0PR11MB5867ACD997AC34B7069815B1D0CB2@SJ0PR11MB5867.namprd11.prod.outlook.com>
References: <20250224063104.308242-1-nitin.r.gote@intel.com>
 <Z8cPWZOkAQxlkOOZ@ashyti-mobl2.lan>
In-Reply-To: <Z8cPWZOkAQxlkOOZ@ashyti-mobl2.lan>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5867:EE_|SA0PR11MB4573:EE_
x-ms-office365-filtering-correlation-id: ac043b66-e526-47e3-64d9-08dd5bb9b4c0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?1CT7AIs+o1u+bvFLn9gQkMq7zj1wr84Uz5E8ASttwj8uznwdyY+RIjGHgX?=
 =?iso-8859-1?Q?c8Tmp2QUiBbdRnDapS/mduFF97njzDUqBORINKAzUmjnqYX8zMRVePek1w?=
 =?iso-8859-1?Q?yhWKiw6hVUAiKMHQ1Wzcvt7vdlvWKHvRFYOiJrf5wk7yGiROtZrGMpWhs6?=
 =?iso-8859-1?Q?pCkHZDUtDyccb9HKb0kpaLORlsFYEhp8BUXUGCUQwtv0Pt/V57momKclAO?=
 =?iso-8859-1?Q?Z3wBJ5O1vBWcIkv9R38ujjqqtlmfIhor9pXH4ROwxagWMYCJnloZLggXWn?=
 =?iso-8859-1?Q?tkwhGp/KHDx1cvoGcBcXV3V4pGvYqOYIKtWB7t1X1DvWyd1kI/42zhJF0t?=
 =?iso-8859-1?Q?woZ8gme+1rhG6Vv8L3pbxYUJ1kkXcGO7Jolje7QyUD085dPJlH4gw1crYx?=
 =?iso-8859-1?Q?zh+jG30NDztgDgcQ9lhJdTF97qHXD2iSimW/vh2gUWofW8CBfmSouTs5Vk?=
 =?iso-8859-1?Q?HKuulzV6a7j7Vkr/zItNrXyEhxUwr6RbkDxAw3c81xME3BtocuyX/puCZJ?=
 =?iso-8859-1?Q?ggdcPGIcD2B4h0rU6dSn3oaeMjWAbGBCRE3q9UW2FsH13SBR52OZzbf9hl?=
 =?iso-8859-1?Q?9n7Ol/Qteiiyv8hyoyzmJAAAyRxF1LSSFzNi4M69QgdB16os72T3PBU3Kx?=
 =?iso-8859-1?Q?nPUuf2V61jPWTTS6A/LG06I/MvgFX2vYnfIu6MZoLXmbZo5DcWbQlFkxL/?=
 =?iso-8859-1?Q?DG3wVezWaJuFjfC2ycQbwlfaUdMVNYI2zGFdPBQlUVvGfcZCJ9xo7553yd?=
 =?iso-8859-1?Q?OsIfog0nXjtLAXm1uL+8wI2h4nMIs/tQ0fT1QMYRLDE6jhIJ0O0NHnM5U1?=
 =?iso-8859-1?Q?TKHlsBWYY7IEDmYyw+rrpirI3fRXbAA87LCejM4BJz5F6Fq+HT/K7+X7zX?=
 =?iso-8859-1?Q?tQJIiRi9eMJ0hbqeRW34KDUwmAxpQ/GKtIUVbfdOsMAG8sN1canCFSHKYe?=
 =?iso-8859-1?Q?g4xUU8kProYY11IGPFxgQo1MXj7fzJ9XX81Q2mfhcdqT+88JG056qBjN3Q?=
 =?iso-8859-1?Q?L6ZHI3mz7b1fplmUw3TG8EDDJLIQmsnuUaV12uuXjV8uOGqd/gfgOB2Eq/?=
 =?iso-8859-1?Q?8faw2Vui0JI8pYzQYECjlyi6TOx3TltzczdUW/dUDYoFdvXXGCiAarpi1C?=
 =?iso-8859-1?Q?DFOuMGa5BHQhFxibt/dtRfLszY8cf3JtvhbV6cqcTABuFAx0w9zAuXYCbt?=
 =?iso-8859-1?Q?9ByOwWzj8OxNY546n13BwsiTiIhdv6mo3fXFpEFi6lN4ld7tsnV0pwkVxI?=
 =?iso-8859-1?Q?Fgq7+jNuRkd/+9wpgqzVEAa/3fNFmzYgMkyLkQBtmnl1tvF3KdcWj9bWgR?=
 =?iso-8859-1?Q?34ApgFIDL3AYd/8o8l+L/TNDhLoFlQzIUEDQsC0K6YTjyCNH4gcBiewaLx?=
 =?iso-8859-1?Q?HZBZFDhP8Co2D1rmzLhDvAghnrmE8Uk6oP8Y+hnhsf3nKw6mwuNNSHG81H?=
 =?iso-8859-1?Q?UyUGKibQlygRGd0c?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5867.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?emloWdversKSO3rYER3x8CsuqhWUh2Iktmeze8QDMKOj+4f/A1GYbGCYd9?=
 =?iso-8859-1?Q?5+5W9EFv+OCSJI3NRQF/r0VGd/Q9m4EO2W9L/TDczh11XJwn+G/60/N9Hp?=
 =?iso-8859-1?Q?UBaKpyQoSe/Y6CnPTv6jTpadCibygJVzp22UAZOFAGhswnI9L3oAnY2fow?=
 =?iso-8859-1?Q?2SsHA3aK72dT+z16dUkV8+NHVtvhuW0/Fd0j8HCzI9d8xhLy4sCssno5u4?=
 =?iso-8859-1?Q?GnfYlrADbCbuVTG9paNPsRpUTbfrs/lYyVu+/fQzzGZx++7qTgEjsEaU8p?=
 =?iso-8859-1?Q?4BcuMRCe2J2J22kgg1nb+an5I9QE+59ihQa97u5QF699TcInoXEPCAtjYK?=
 =?iso-8859-1?Q?D6chUqFLYX5m34aJqr0FOOlvyCGaXlrzqFPOD3t2zu5SJyHN2MEYPnC55i?=
 =?iso-8859-1?Q?+UDVqwV7NxBf9Rr+GjilOrYDYwzaZeBnA+77HE3lUVQRLKhN/aJhxIqA4W?=
 =?iso-8859-1?Q?RtjS6+mx+aGD8OkM8kzUorMDFJrsG7GLSYrAmpprPiS1J72Q/jBb+xPDts?=
 =?iso-8859-1?Q?5sQcoe+bmvqI4arVKERKr3HThv5Bv82lc0GdgW/+jGrq5ol2ip5piVAS5S?=
 =?iso-8859-1?Q?q127HWgvOo3OfVJHmh0cb6A2Pn0Zunxtdqkis8sMKi6Y+7rJatG40k4vaa?=
 =?iso-8859-1?Q?paF5MfCfv7iXrAIoS7DmiQJQslP9gXmTT9oTtLLyIBjPfAWCOVCdV9VZG7?=
 =?iso-8859-1?Q?9Lz/8XzArX+4m21Nl2XZmtiWKBplLFobQYTJTp2AyT7etZGbnOdoCmX5Ke?=
 =?iso-8859-1?Q?Jaylgp3iDB/DWpJYS72/RlQRPoZ/M1QkfR9XpyH3IbeX00f02gpEH6TwMS?=
 =?iso-8859-1?Q?ZxKUb66VzVqwouW4BONGqBELu2cMC4xsBoXhdAOUqvdR0HhLBWoOKKWSjV?=
 =?iso-8859-1?Q?3gGnpjjGMPot1A48iFE699EmjE2kw0S0x4jfaQ7HN3a1mf6bl2j/l9jh1c?=
 =?iso-8859-1?Q?PjVYnAGeC2L5RKUndTaAjnbCUNysL4xA5leXbTkbrekMxGeCdeW5Uhmxix?=
 =?iso-8859-1?Q?Q4Ja/UYolCEi12/b1jZlTsUQQsf6Y4yyW8zaUmBHSKJkwsaSyrC2ETF4af?=
 =?iso-8859-1?Q?+o6WLNPx+mooRyCrf+NU2gmJkOInvdgQ+j5v4UUdlg77Du4siFvR0MdY5M?=
 =?iso-8859-1?Q?LyeKsVyE0O8VGLTlktu/KXK4cw6fnVnpBWivMPxOeYRmBj7TiiheRw25UU?=
 =?iso-8859-1?Q?e78VNx2jJdYtKL/S8X1CPPDEiiVO7egcFn3nLs2qnfQlg+VD2ey3s+PlgW?=
 =?iso-8859-1?Q?4BJRN7r0suWT6P8ii1O7DUbR72+fb3O3p8cHGjf2zSU88uyPYOYcKq1Fqv?=
 =?iso-8859-1?Q?FHq9g6TfNh4DOmoGPXdNrKI1kQ2vSQY8OU9ZqETz5vyZamdcFboDLBcVKe?=
 =?iso-8859-1?Q?rJ0yh1m0O5VaLaM1a1GYeT5Mvc3ri+/kovhWFo9ub+htS59tq2hB1aR+tq?=
 =?iso-8859-1?Q?k51ocC6Uk4Dyob8hol6Dn8eIvO4nenhq+0PFSUb4bagu0v0+3PMylcyhAa?=
 =?iso-8859-1?Q?0N81fANIHYTl92Z63/i8RSw4x1Useraw3V3zsaT/AIFkMegjnCmlTA8HQs?=
 =?iso-8859-1?Q?z1Kqsn8hMkdXaXSfsaYZWbFoAdkuNLFzQBMJALo5UOc2jeuzodxC7M4pBD?=
 =?iso-8859-1?Q?l51tC7n1ZWzLYmpEK7Iujrx61tL/yg+r6Q?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ac043b66-e526-47e3-64d9-08dd5bb9b4c0
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Mar 2025 07:45:31.5484 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RHGWMGcfCZ2fzu6kJMNM4/wQpEVNpdqGpp/+ZnOgnf1XST4YHfgXf9h8h9J2MwK4JlQIIYICtaZXhayjquLvBA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4573
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

> Hi Nitin,
>=20
> On Mon, Feb 24, 2025 at 12:01:04PM +0530, Nitin Gote wrote:
> > Sometimes engine reset fails because the engine resumes from an
> > incorrect RING_HEAD. Engine head failed to set to zero even after
> > writing into it. This is a timing issue and we experimented different
> > values and found out that 20ms delay works best based on testing.
> >
> > So, add a 20ms delay to let engine resumes from correct RING_HEAD.
> >
> > Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13650
> > Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_ring_submission.c | 7 +++++++
> >  1 file changed, 7 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> > b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> > index 6e9977b2d180..5576f000e965 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> > @@ -365,6 +365,13 @@ static void reset_prepare(struct intel_engine_cs
> *engine)
> >  			     ENGINE_READ_FW(engine, RING_HEAD),
> >  			     ENGINE_READ_FW(engine, RING_TAIL),
> >  			     ENGINE_READ_FW(engine, RING_START));
> > +		/*
> > +		 * Sometimes engine head failed to set to zero even after writing
> into it.
> > +		 * Use 20ms delay to let engine resumes from correct
> RING_HEAD.
> > +		 * Experimented different values and determined that 20ms
> works best
> > +		 * based on testing.
> > +		 */
> > +		mdelay(20);
>=20
> Is there any extremely strong reason for using mdelay here, rather than a=
ny other
> delay function?
>=20
> Andi

Yes. Firstly I checked with udelay(20000) and while testing a test for 1000=
 times,=20
a=A0couple of times got an issue of "BUG: scheduling while atomic: i915_sel=
ftest/10313/0x00000201" from the=A0scheduler.
Adding here a=A0failure stack trace in case you want to take a look.

And that's why I used mdelay(20), where I have not seen this issue. I have =
tested with mdelay(20), thousands of times and it worked.

stack trace:
i915: Running intel_hangcheck_live_selftests/igt_reset_nop_engine
BUG: scheduling while atomic: i915_selftest/10313/0x00000201
1 lock held by i915_selftest/10313:
 #0: ffff888102e011b0 (&dev->mutex){....}-{3:3}, at: __device_driver_lock+0=
x43/0x60
 CPU: 4 UID: 0 PID: 10313 Comm: i915_selftest Tainted: G     U             =
6.14.0-rc3-ci-drm-16154+ #1
 Tainted: [U]=3DUSER
 Hardware name: LENOVO 10AGS00601/SHARKBAY, BIOS FBKT34AUS 04/24/2013
 Call Trace:
  <TASK>
  dump_stack_lvl+0xa0/0xc0
  dump_stack+0x10/0x20
  __schedule_bug+0x6c/0x90
  __schedule+0x1a04/0x21a0
  ? lock_acquire+0xc7/0x300
  ? find_held_lock+0x31/0x90
  ? lock_release+0xd1/0x2a0
  schedule+0x40/0x130
  schedule_timeout+0x82/0x100
  ? __pfx_process_timeout+0x10/0x10
  ? msleep+0x13/0x50
  msleep+0x3b/0x50
  reset_prepare+0x10b/0x1d0 [i915]
  reset_prepare_engine+0x31/0x40 [i915]
  __intel_engine_reset_bh+0xac/0x230 [i915]
  ? intel_engine_reset+0x21/0x60 [i915]
  intel_engine_reset+0x34/0x60 [i915]
  igt_reset_nop_engine+0x22e/0x4e0 [i915]
  __i915_subtests+0xb3/0x230 [i915]
  ? __pfx___intel_gt_live_teardown+0x10/0x10 [i915]
  ? __pfx___intel_gt_live_setup+0x10/0x10 [i915]
  intel_hangcheck_live_selftests+0xc0/0x110 [i915]
  __run_selftests+0xd4/0x1d0 [i915]
  ? acpi_dev_found+0x68/0x80
  i915_live_selftests+0x53/0x90 [i915]
  i915_pci_probe+0x118/0x210 [i915]
  local_pci_probe+0x4b/0xb0
  pci_device_probe+0xe7/0x270
  really_probe+0xfb/0x390
  __driver_probe_device+0x8a/0x170
  driver_probe_device+0x23/0xb0
  __driver_attach+0xc7/0x190
  ? __pfx___driver_attach+0x10/0x10
  bus_for_each_dev+0x7f/0xd0
  driver_attach+0x1e/0x30
  bus_add_driver+0x146/0x280
  driver_register+0x64/0x130
  __pci_register_driver+0x7d/0x90
  i915_pci_register_driver+0x23/0x30 [i915]
  i915_init+0x37/0x120 [i915]
  ? __pfx_i915_init+0x10/0x10 [i915]
  do_one_initcall+0x63/0x3d0
  do_init_module+0x99/0x2b0
  load_module+0x2313/0x27d0
  init_module_from_file+0x9c/0xe0
  ? init_module_from_file+0x9c/0xe0
  idempotent_init_module+0x1a5/0x2b0
  __x64_sys_finit_module+0x63/0xc0
  x64_sys_call+0x1b6f/0x2140
  do_syscall_64+0x8f/0x170
  ? syscall_exit_to_user_mode+0x11a/0x300
  ? do_syscall_64+0x9b/0x170
  ? __fput+0x1cb/0x2f0
  ? syscall_exit_to_user_mode+0x11a/0x300
  ? do_syscall_64+0x9b/0x170
  ? ksys_read+0x70/0xf0
  ? syscall_exit_to_user_mode+0x11a/0x300
  ? do_syscall_64+0x9b/0x170
  ? seq_read_iter+0x216/0x470
  ? lock_release+0xd1/0x2a0
  ? __mutex_unlock_slowpath+0x41/0x300
  ? mutex_unlock+0x12/0x20
  ? seq_read_iter+0x216/0x470
  ? vfs_read+0x139/0x360
  ? vfs_read+0x139/0x360
  ? ksys_read+0x70/0xf0
  ? syscall_exit_to_user_mode+0x11a/0x300
  ? do_syscall_64+0x9b/0x170
  ? sysvec_apic_timer_interrupt+0x56/0xb0
  entry_SYSCALL_64_after_hwframe+0x76/0x7e
 RIP: 0033:0x7ab0b172725d

- Nitin


>=20
> >  		if (!stop_ring(engine)) {
> >  			drm_err(&engine->i915->drm,
> >  				"failed to set %s head to zero "
> > --
> > 2.25.1
