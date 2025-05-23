Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D34CAAC1F7C
	for <lists+intel-gfx@lfdr.de>; Fri, 23 May 2025 11:12:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3165110E7B9;
	Fri, 23 May 2025 09:12:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AzU16vVL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AB6410E738;
 Fri, 23 May 2025 09:12:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747991566; x=1779527566;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vB72SeopR6nZDWPJytwqLxxfPpjodMq4BR/3HrfaTNE=;
 b=AzU16vVLNC6ayB0O4KTRNcTiIdeAqXD12PEaLR0/HfHqdRbSL7th7lPr
 NfE/FvSoEPD52Lqq+ZEBAjEjkHEhAvstpXbUP7jbtdqbwtWXhukjKsgJa
 +brWD7WO4t6tk8ctgwV5/e/85/nB7Wa7my+JEFZblx+a92xS6KJfq7jpL
 RHEC2L7BpA80lgGwb4suoUH1ECPytGNdCex7DFL92UV1hbFIjcvrLTpBi
 sMXHdszWmGD/ClmFm+ZuQ+BjGoYl5N+NED1TK0FMPJkiY0zVlD4ofTct3
 7qlL2c3ikkR0vy6soaV4QW2ZQ2uc0EjSmjSmzXcn9am2TxWr5KTISE5G/ g==;
X-CSE-ConnectionGUID: euWgJQKiQ/yMEt/AomnZ1w==
X-CSE-MsgGUID: TS5wSV5ZRGaRy5OoVID2EQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11441"; a="49924800"
X-IronPort-AV: E=Sophos;i="6.15,308,1739865600"; d="scan'208";a="49924800"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2025 02:12:46 -0700
X-CSE-ConnectionGUID: madb161wTvKD9LGCQgWJ7g==
X-CSE-MsgGUID: CBhwCJY/Qp+JxlFX07XA5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,308,1739865600"; d="scan'208";a="140886194"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2025 02:12:45 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 23 May 2025 02:12:45 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Fri, 23 May 2025 02:12:45 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.50)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Fri, 23 May 2025 02:12:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=I9yO9xVPjLQA1kQqBNjobDNebPOcIRoeDflspWQYk9bbuIdgLYvIdhdJIUgKCLTkU1+plLz92gVaSmsDd3fkCgQ6UxMTw8pJRtoCD+wuIoPEU+yWfJ0g9RuBMTyELpRd4jGE7iL9T5GhW3cjEhgHIGY2gpYeGhacKReBZG77Blotm9k4Hy1oboi5SO5LV+mrjtInHurXANxZI7Ns/6SXHHJ9/Nyz5hCbc5Frhk7GTxcaSPWoCMs7z9hTZlgk9lgStYFGxUXGeL4kMQwWW7/79miqh0nV0vUCo0ALPz6AHVkOKh2FmDp7F4u5Cpu2ysyzoKtobbDxj0AeW39HdyZtYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8HcaWyQuzV0chET5utFoIb0Cc/8dnPQpRiEXyQBUi7g=;
 b=O9RlQh4jWJCiULxaY5gjoHNsyBpFsTiNG13AJsd6GMOcF6D/bPU5+jylSci8bfNlF1LFKTZ6yluZ+IGYKooe61/6/ID5o9pqrUIupUze8DTUDq0fEcMPu/Xt5BImkbRczRwcxBQqfUpUc0Y3yQGQ8eNAbwdmaueJftg8nQCKUopOsr3wJG72wIK9Sa4JQy0m42XF8bw0kjlR9KkZmyrk5Pw2wulzPMsfK/jbez2PR0nsm3zPcOtK44sXqqML7MSDZAiN4+dcYPu3fFq0bTYjTsWOAxp8DkAM8McnVSBp9R9TqHIPZyEYrBq+B7HUtHxGVgoZJOtungIPCqewCsenRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 PH7PR11MB7607.namprd11.prod.outlook.com (2603:10b6:510:279::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.22; Fri, 23 May
 2025 09:12:28 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%5]) with mapi id 15.20.8769.019; Fri, 23 May 2025
 09:12:28 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 06/12] drm/i915/dmc: Define flip queue related PIPEDMC
 registers
Thread-Topic: [PATCH 06/12] drm/i915/dmc: Define flip queue related PIPEDMC
 registers
Thread-Index: AQHbxlaJoQtuBzK90ECXw60OXa7OYrPYwrHwgASgaACAApTPgA==
Date: Fri, 23 May 2025 09:12:27 +0000
Message-ID: <DM4PR11MB6360C348F5225AAC18D9A59EF498A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20250516113408.11689-1-ville.syrjala@linux.intel.com>
 <20250516113408.11689-7-ville.syrjala@linux.intel.com>
 <DM4PR11MB636093C0D6A9D736281E3E17F49DA@DM4PR11MB6360.namprd11.prod.outlook.com>
 <aC4QzGuf16FmMyM6@intel.com>
In-Reply-To: <aC4QzGuf16FmMyM6@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|PH7PR11MB7607:EE_
x-ms-office365-filtering-correlation-id: 73961193-f4db-4dcf-62e8-08dd99d9f094
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?mCvDwRqeMFtDDOwKj/S1mdWYR9bfj6J4CBivB5qvU4qKCE4iGkQLvqtXqt?=
 =?iso-8859-1?Q?Wn610Ta8ij1oLksecNAZXFYehbRdmAVhjQlp5A2bCWojM4TAamvNf/iQ3V?=
 =?iso-8859-1?Q?3zfxeaK9jqP8NlZSEOBWWvqnlyd02tOwwaMPONKTpy/Y1r94PSflpHbHb+?=
 =?iso-8859-1?Q?QCRUN86tgODWNhRxxRycub4pldb2PmMLz3jsB1OomtG7TLYmQ2/xD2NfGF?=
 =?iso-8859-1?Q?broR/9Esh+0l36Ge4ibOCRt4Sfq/7usfDSSHPoRj222yTWLuMw9JjtoDx6?=
 =?iso-8859-1?Q?5VU75j5acVnt3QSxOOo5mewT7Jotv5sK7wKegHO5HeAU/wqG4P/Y8UuNYF?=
 =?iso-8859-1?Q?O96V/R1m3cCwK6CSRiYReXlIyVXf2V/GFjJm1PhogP6VW++7SOJQ5RHchJ?=
 =?iso-8859-1?Q?tv9XbS0Rl3leQQ9wqWc6E2KPtl6j9I4WV7LmCBf1jlpjBZVIB+knqjdAxu?=
 =?iso-8859-1?Q?A0NVAVYjSdbCDRigib/xgimdiMScrwS4fCOV79rtIXQlYFdFyc+2hT9hpt?=
 =?iso-8859-1?Q?FIQBknCUTRMP+0pdWQzNdC2ZcudrZLvza45hTqJataQfu+src2+EclSvGL?=
 =?iso-8859-1?Q?o62ttF9RZLa7zAIY7GisKpYCx2KdHadpRyKApJzEigK2zvDf12+352itgl?=
 =?iso-8859-1?Q?IImrPw/ykUcfRaufLLH1CooPJnZQ2M/oEu3i3VGfU0XZqR+CYMzVoxY2Tg?=
 =?iso-8859-1?Q?Q9YUaJSGCPaKskMcNUuJHfiB59bv3vjm5NgAcfSz2t+hlrZN1O5RlT0H3b?=
 =?iso-8859-1?Q?QIasnY7ci73p6pCri7Z2JuO61ROhhMqxyqnLxwT5F/OV3R7VQpe6y6Bhwc?=
 =?iso-8859-1?Q?Ekmahvihrt4NDEKXBN6CRvtc1xME+/Z53gDxMmEL2MUZmLoNdFNQpdSE/z?=
 =?iso-8859-1?Q?bxvsJOPFuMv+EsQMchvhEd9g6JgiCfJWWH+qBeCweDy35xHFpyxmQ0TccN?=
 =?iso-8859-1?Q?wmJDADzYr3dxipeF4qvhVSRoP14jtJ1UM+zz1wNgSdvXczBJa0Rx0x+SwB?=
 =?iso-8859-1?Q?8Nnw7R5GU/2yGxFvrvZ6WOK6/GaLTX7dywTZsGZq3Kd1XzYlTUFGqBe4AT?=
 =?iso-8859-1?Q?uSZ0t8+t4YrZ/CFNeh14HvDbdAIegOCFC+55FAu1Kq8SHmPf3BTddGiehx?=
 =?iso-8859-1?Q?B2zvtXp5SxctaCIzvviZ0CsflngmMkCwMDWMFirRLxn85WaZnwoacuuDMa?=
 =?iso-8859-1?Q?zM9SqHEfUlNIhat0vjdAmItKjutuCOp65GJ1kqt2UhnwWcBZVHnBQOa0Xt?=
 =?iso-8859-1?Q?rujmmf3pF30t0iy+LGUeCK04TLa84hfMejXbKI6ow3Iq7YXX+EFVng8WIT?=
 =?iso-8859-1?Q?T1IgaweWIpSdSogxwOyKOoJ66lhSWOaGG+Wh2BMcGW3LtUINpXsPIFkeR0?=
 =?iso-8859-1?Q?V/2yPfII+8oYr30EzM7FvWJnaBwEuE0ZOWMk90GyF/qVVq/nYDSZHVjeyt?=
 =?iso-8859-1?Q?f60feTof3hHgYvEEUYudcdtut+kmLQ3V+Gm0P+uYA1FZs+wDXhtXpSc+6X?=
 =?iso-8859-1?Q?LePnAadJBL55rM9BFkaxZ+dUDoPif06mWvz2WboGzwaw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?PwYf+hugXkvp15P1h9hCTIG7Z4SaIJ3jTm4ZjmdMw3xrLRHTXT2rVayYkj?=
 =?iso-8859-1?Q?/d9kTdv2+Mx/GEriv+HgMv6XoLKzTsqdQmhxgNOPDER6vAM9IrDZDlZJ81?=
 =?iso-8859-1?Q?lVdiMd8chTYLIJIj1P72jKWvz/Y99I9Mhnm7GS0Mha6dEfxQZLmYoaOx9K?=
 =?iso-8859-1?Q?tiMNnLMtxYw2B4Rex9j2XlZ4rzIAX7E99rBMOwsltzU8eLlBs4bHV6t2NM?=
 =?iso-8859-1?Q?GpHLHIpuQJqLhQIu2yLoZh3FYrBH/O29oCa4LNjLKoeLAvkcQtp35vDunX?=
 =?iso-8859-1?Q?Nn+hnzm+zF8DPBbFEwcihSNbRE6cKPwp3btsSTX7Wm60gaobLZyb+/qGSH?=
 =?iso-8859-1?Q?dHMZNT9SAomaBsUTtoyDuMpXtN2mV2+ph87vYBF6wY+wl+rNxW67Gt4WOl?=
 =?iso-8859-1?Q?JVVHqDdj9v1PttsGIulLsnqrrEKuRPqUmjdlgNaEapjDCNpcw+ByC0RTSF?=
 =?iso-8859-1?Q?sGtLuKgRAWSslR75pxFAVCFl0YaJ6GWHVwxHdJcROFZV14qZfgd1d5NK1Y?=
 =?iso-8859-1?Q?f2RJ1pFFoIgr4cCp++5SXXUUKPlAZFBMtLELeqVHEeCGZ8atSEnkQ7xKOr?=
 =?iso-8859-1?Q?DznVHlRJU8BLpHEI/Zrsf0kCPWNj6mMWTSCDJIiVdFq0uoUfUNFc9RhPTx?=
 =?iso-8859-1?Q?pUqhnuPPx8qetFKaAECz6iDyCxgK6AtbA9lS1B+EonnZABgnumr8rqWGdD?=
 =?iso-8859-1?Q?FvzJ2kIzuNWLlDIbYFtj+tWBfvBKZzdRwvaYJ+G6nzCsUB16WdoENr5hKI?=
 =?iso-8859-1?Q?qCRm3M1VibjagPJUPoZGmqIddwgjM3TNSfnUoPUKeps0iN2CEQ9AS57+8K?=
 =?iso-8859-1?Q?V3iJcPXRSDbUCKYp3oc6f5xPAKcridho+7maQKAKyXAaAEWfXYcYrNbH7H?=
 =?iso-8859-1?Q?0g8f8bCe0WLITzxLqou4zrzwK557A4LCvFvOTemHSjIOfYR0X6ssaNrFMW?=
 =?iso-8859-1?Q?3YqcPtP0qxoiMV1cu2ylOBRUYKurYHKOADx7KQLgRv7/rjz9LrRXO+U6/C?=
 =?iso-8859-1?Q?qcWnNYdyt4UiFONgXkA6Ag2zJxaDad0LwEpv1p/ljtBZQPBqP/kXYNKEQq?=
 =?iso-8859-1?Q?ZRBsQHKcjpmDJAU7dLJzLj4gtc+i0yTpUOsJH/Kl3Q20WVvE+MBzXaWZ0Y?=
 =?iso-8859-1?Q?tSsjqMrgO6yEoI0ZwTgqtbMr5xjeKEdT/bByaElHy4+2gM3Wk+nNkHlLAt?=
 =?iso-8859-1?Q?WTkpnHhUuarrEclDMf7kk0/fLDJx2knPVYHzPYuv2ejdJAWB3KvR9cBqll?=
 =?iso-8859-1?Q?ZX2qP/eqqDiotajw4RV9nGYkDBX/0Bw+KzVDKjW2Z9RFenERLcbLWtxdDj?=
 =?iso-8859-1?Q?Js/8FB6vDdos7ERBJ0lzjtV7wH4Amu1isIHvSvEeFdswvWujD1eV3e5+73?=
 =?iso-8859-1?Q?EBkj6O3zYPRSjtZr8JZHWF1uPV8OyFHFWT+pSGSdT0naLHW4l43zBCVBD6?=
 =?iso-8859-1?Q?hECiwHZZrjUqHih7ijYGaN/IWDPKv/lZWRb4yNl9oF8w+oIOFCSOrmgc6F?=
 =?iso-8859-1?Q?QStd7ye6n56VAjUgkxcvlRtLlEgD52VICf44OogABEaZp5XpvbKxK4R+W+?=
 =?iso-8859-1?Q?ioyODatNYUrLlx4s3ZQnrtMFE8bF6fNidfOxp+edfE01Y6MVS8w1aAb+fX?=
 =?iso-8859-1?Q?AevH5U66ltlO22t2vvpRwbAdwprsTvN39O?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 73961193-f4db-4dcf-62e8-08dd99d9f094
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 May 2025 09:12:27.9064 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AqAVLLh1Hks01LPjlKOVrvMCBJrBvUb3fveC+oltJ7Uv8BYgRyk/IttxWJcPAou2nQbN0A0g8lNUhdueTUpIkw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7607
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



> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Wednesday, May 21, 2025 11:14 PM
> To: Shankar, Uma <uma.shankar@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Subject: Re: [PATCH 06/12] drm/i915/dmc: Define flip queue related PIPEDM=
C
> registers
>=20
> On Sun, May 18, 2025 at 07:41:06PM +0000, Shankar, Uma wrote:
> >
> >
> > > -----Original Message-----
> > > From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of
> > > Ville Syrjala
> > > Sent: Friday, May 16, 2025 5:04 PM
> > > To: intel-gfx@lists.freedesktop.org
> > > Cc: intel-xe@lists.freedesktop.org
> > > Subject: [PATCH 06/12] drm/i915/dmc: Define flip queue related
> > > PIPEDMC registers
> > >
> > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > >
> > > Add the register definitions for a bunch of flip queue related PIPEDM=
C
> registers.
> > >
> > > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_dmc_regs.h | 172
> > > +++++++++++++++++-
> > >  1 file changed, 171 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> > > b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> > > index d8e715677454..613160a1f9f2 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> > > @@ -6,7 +6,7 @@
> > >  #ifndef __INTEL_DMC_REGS_H__
> > >  #define __INTEL_DMC_REGS_H__
> > >
> > > -#include "i915_reg_defs.h"
> > > +#include "intel_display_reg_defs.h"
> > >
> > >  enum dmc_event_id {
> > >  	DMC_EVENT_TRUE =3D 0x0,
> > > @@ -287,6 +287,17 @@ enum pipedmc_event_id {
> > >  #define MTL_PIPEDMC_CONTROL		_MMIO(0x45250)
> > >  #define  PIPEDMC_ENABLE_MTL(pipe)	REG_BIT(((pipe) - PIPE_A) * 4)
> > >
> > > +#define _PIPEDMC_LOAD_HTP_A		0x5f000
> > > +#define _PIPEDMC_LOAD_HTP_B		0x5f400
> > > +#define PIPEDMC_LOAD_HTP(pipe)		_MMIO_PIPE((pipe),
> > > _PIPEDMC_LOAD_HTP_A, _PIPEDMC_LOAD_HTP_B)
> > > +
> > > +#define _PIPEDMC_CTL_A		0x5f064
> > > +#define _PIPEDMC_CTL_B		0x5f464
> > > +#define PIPEDMC_CTL(pipe)		_MMIO_PIPE((pipe),
> _PIPEDMC_CTL_A,
> > > _PIPEDMC_CTL_B)
> > > +#define   PIPEDMC_HALT			REG_BIT(31)
> > > +#define   PIPEDMC_STEP			REG_BIT(27)
> > > +#define   PIPEDMC_CLOCKGATE		REG_BIT(23)
> > > +
> > >  #define _PIPEDMC_STATUS_A		0x5f06c
> > >  #define _PIPEDMC_STATUS_B		0x5f46c
> > >  #define PIPEDMC_STATUS(pipe)		_MMIO_PIPE((pipe),
> > > _PIPEDMC_STATUS_A, _PIPEDMC_STATUS_B) @@ -298,6 +309,139 @@
> enum
> > > pipedmc_event_id {
> > >  #define   PIPEDMC_INT_VECTOR_FLIPQ_PROG_DONE
> > > 	REG_FIELD_PREP(PIPEDMC_INT_VECTOR_MASK, 0xff) /*
> > > Wa_16018781658:lnl[a0] */
> > >  #define   PIPEDMC_EVT_PENDING		REG_GENMASK(7, 0)
> > >
> > > +#define _PIPEDMC_FQ_CTRL_A		0x5f078
> > > +#define _PIPEDMC_FQ_CTRL_B		0x5f478
> > > +#define PIPEDMC_FQ_CTRL(pipe)		_MMIO_PIPE((pipe),
> > > _PIPEDMC_FQ_CTRL_A, _PIPEDMC_FQ_CTRL_B)
> > > +#define   PIPEDMC_FQ_CTRL_ENABLE	REG_BIT(31)
> > > +#define   PIPEDMC_FQ_CTRL_BUSY		REG_BIT(30)
> > > +#define   PIPEDMC_FQ_CTRL_ASYNC		REG_BIT(29)
> > > +#define   PIPEDMC_FQ_CTRL_PREEMPT	REG_BIT(0)
> > > +
> > > +#define _PIPEDMC_FQ_STATUS_A		0x5f098
> > > +#define _PIPEDMC_FQ_STATUS_B		0x5f498
> > > +#define PIPEDMC_FQ_STATUS(pipe)		_MMIO_PIPE((pipe),
> > > _PIPEDMC_FQ_STATUS_A, _PIPEDMC_FQ_STATUS_B)
> > > +#define   PIPEDMC_FQ_STATUS_BUSY		REG_BIT(31)
> > > +#define   PIPEDMC_FQ_STATUS_W2_LIVE_STATUS	REG_BIT(1)
> > > +#define   PIPEDMC_FQ_STATUS_W1_LIVE_STATUS	REG_BIT(0)
> > > +
> > > +#define _PIPEDMC_FPQ_ATOMIC_TP_A	0x5f0a0
> > > +#define _PIPEDMC_FPQ_ATOMIC_TP_B	0x5f4a0
> > > +#define PIPEDMC_FPQ_ATOMIC_TP(pipe)	_MMIO_PIPE((pipe),
> > > _PIPEDMC_FPQ_ATOMIC_TP_A, _PIPEDMC_FPQ_ATOMIC_TP_B)
> > > +#define   PIPEDMC_FPQ_PLANEQ_3_TP_MASK	REG_GENMASK(31, 26)
> > > +#define   PIPEDMC_FPQ_PLANEQ_3_TP(tail)
> > > 	REG_FIELD_PREP(PIPEDMC_FPQ_PLANEQ_3_TP_MASK, (tail))
> > > +#define   PIPEDMC_FPQ_PLANEQ_2_TP_MASK	REG_GENMASK(24, 19)
> > > +#define   PIPEDMC_FPQ_PLANEQ_2_TP(tail)
> > > 	REG_FIELD_PREP(PIPEDMC_FPQ_PLANEQ_2_TP_MASK, (tail))
> > > +#define   PIPEDMC_FPQ_PLANEQ_1_TP_MASK	REG_GENMASK(17, 12)
> > > +#define   PIPEDMC_FPQ_PLANEQ_1_TP(tail)
> > > 	REG_FIELD_PREP(PIPEDMC_FPQ_PLANEQ_1_TP_MASK, (tail))
> > > +#define   PIPEDMC_FPQ_FASTQ_TP_MASK	REG_GENMASK(10, 6)
> > > +#define   PIPEDMC_FPQ_FASTQ_TP(tail)
> > > 	REG_FIELD_PREP(PIPEDMC_FPQ_FASTQ_TP_MASK, (tail))
> > > +#define   PIPEDMC_FPQ_GENERALQ_TP_MASK	REG_GENMASK(4, 0)
> > > +#define   PIPEDMC_FPQ_GENERALQ_TP(tail)
> > > 	REG_FIELD_PREP(PIPEDMC_FPQ_GENERALQ_TP_MASK, (tail))
> > > +
> > > +#define _PIPEDMC_FPQ_LINES_TO_W1_A	0x5f0a4
> > > +#define _PIPEDMC_FPQ_LINES_TO_W1_B	0x5f4a4
> > > +#define PIPEDMC_FPQ_LINES_TO_W1		_MMIO_PIPE((pipe),
> > > _PIPEDMC_FPQ_LINES_TO_W1_A, _PIPEDMC_FPQ_LINES_TO_W1_B)
> > > +
> > > +#define _PIPEDMC_FPQ_LINES_TO_W2_A	0x5f0a8
> > > +#define _PIPEDMC_FPQ_LINES_TO_W2_B	0x5f4a8
> > > +#define PIPEDMC_FPQ_LINES_TO_W2		_MMIO_PIPE((pipe),
> > > _PIPEDMC_FPQ_LINES_TO_W2_A, _PIPEDMC_FPQ_LINES_TO_W2_B)
> > > +
> > > +#define _PIPEDMC_SCANLINECMP_A		0x5f11c
> > > +#define _PIPEDMC_SCANLINECMP_B		0x5f51c
> > > +#define PIPEDMC_SCANLINECMP(pipe)	_MMIO_PIPE((pipe),
> > > _PIPEDMC_SCANLINECMP_A, _PIPEDMC_SCANLINECMP_B)
> > > +#define   PIPEDMC_SCANLINECMP_EN	REG_BIT(31)
> > > +#define   PIPEDMC_SCANLINE_NUMBER	REG_GENMASK(27, 0)
> >
> > The scanline number seems to be 0:20 for LNL/PTL, can you please
> > re-check once. It's extended to 27 for later platforms.
>=20
> The later stuff seems uncertain, so I'll drop these to 21 bits for now.

Sure

> >
> > > +#define _PIPEDMC_SCANLINECMPLOWER_A	0x5f120
> > > +#define _PIPEDMC_SCANLINECMPLOWER_B	0x5f520
> > > +#define PIPEDMC_SCANLINECMPLOWER(pipe)	_MMIO_PIPE((pipe),
> > > _PIPEDMC_SCANLINECMPLOWER_A, _PIPEDMC_SCANLINECMPLOWER_B)
> > > +#define   PIPEDMC_SCANLINEINRANGECMP_EN		REG_BIT(31)
> > > +#define   PIPEDMC_SCANLINEOUTRANGECMP_EN	REG_BIT(30)
> > > +#define   PIPEDMC_SCANLINE_LOWER_MASK
> 	REG_GENMASK(27, 0)
> >
> > This as well.
> >
> > > +#define   PIPEDMC_SCANLINE_LOWER(scanline)
> > > 	REG_FIELD_PREP(PIPEDMC_SCANLINE_LOWER_MASK, (scanline))
> > > +
> > > +#define _PIPEDMC_SCANLINECMPUPPER_A	0x5f124
> > > +#define _PIPEDMC_SCANLINECMPUPPER_B	0x5f524
> > > +#define PIPEDMC_SCANLINECMPUPPER(pipe)	_MMIO_PIPE((pipe),
> > > _PIPEDMC_SCANLINECMPUPPER_A, _PIPEDMC_SCANLINECMPUPPER_B)
> > > +#define   PIPEDMC_SCANLINE_UPPER_MASK	REG_GENMASK(27, 0)
> >
> > Same as above.
> >
> > > +#define   PIPEDMC_SCANLINE_UPPER(scanline)
> > > 	REG_FIELD_PREP(PIPEDMC_SCANLINE_UPPER_MASK, (scanline))
> > > +
> > > +#define _MMIO_PIPEDMC_FPQ(pipe, fq_id, \
> > > +			  reg_fpq1_a, reg_fpq2_a, reg_fpq3_a, reg_fpq4_a, \
> > > +			  reg_fpq1_b, reg_fpq2_b, reg_fpq3_b, reg_fpq4_b) \
> > > +	_MMIO(_PICK_EVEN_2RANGES((fq_id), INTEL_FLIPQ_PLANE_3, \
> > > +				 _PIPE((pipe), (reg_fpq1_a), (reg_fpq1_b)), \
> > > +				 _PIPE((pipe), (reg_fpq2_a), (reg_fpq2_b)), \
> > > +				 _PIPE((pipe), (reg_fpq3_a), (reg_fpq3_b)), \
> > > +				 _PIPE((pipe), (reg_fpq4_a), (reg_fpq4_b))))
> > > +
> > > +#define _PIPEDMC_FPQ1_HP_A		0x5f128
> > > +#define _PIPEDMC_FPQ2_HP_A		0x5f138
> > > +#define _PIPEDMC_FPQ3_HP_A		0x5f168
> > > +#define _PIPEDMC_FPQ4_HP_A		0x5f174
> > > +#define _PIPEDMC_FPQ5_HP_A		0x5f180
> > > +#define _PIPEDMC_FPQ1_HP_B		0x5f528
> > > +#define _PIPEDMC_FPQ2_HP_B		0x5f538
> > > +#define _PIPEDMC_FPQ3_HP_B		0x5f568
> > > +#define _PIPEDMC_FPQ4_HP_B		0x5f574
> > > +#define _PIPEDMC_FPQ5_HP_B		0x5f580
> >
> > This entry 5 is not used, is it intentional ?
>=20
> We don't need it for the macro since it's (fortunately) at a suitable off=
set from the
> previous entry. It's also for the "fast queue" which isn't used, so techn=
ically could
> just nuke it. But since the firmware still has all the code for it I figu=
red I might as
> well document them all.

Ok, will leave to your discretion.

> >
> > > +#define PIPEDMC_FPQ_HP(pipe, fq_id)	_MMIO_PIPEDMC_FPQ((pipe),
> (fq_id), \
> > > +
> > > _PIPEDMC_FPQ1_HP_A, _PIPEDMC_FPQ2_HP_A, \
> > > +
> > > _PIPEDMC_FPQ3_HP_A, _PIPEDMC_FPQ4_HP_A, \
> > > +
> > > _PIPEDMC_FPQ1_HP_B, _PIPEDMC_FPQ2_HP_B, \
> > > +
> > > _PIPEDMC_FPQ3_HP_B, _PIPEDMC_FPQ4_HP_B)
> > > +
> > > +#define _PIPEDMC_FPQ1_TP_A		0x5f12c
> > > +#define _PIPEDMC_FPQ2_TP_A		0x5f13c
> > > +#define _PIPEDMC_FPQ3_TP_A		0x5f16c
> > > +#define _PIPEDMC_FPQ4_TP_A		0x5f178
> > > +#define _PIPEDMC_FPQ5_TP_A		0x5f184
> > > +#define _PIPEDMC_FPQ1_TP_B		0x5f52c
> > > +#define _PIPEDMC_FPQ2_TP_B		0x5f53c
> > > +#define _PIPEDMC_FPQ3_TP_B		0x5f56c
> > > +#define _PIPEDMC_FPQ4_TP_B		0x5f578
> > > +#define _PIPEDMC_FPQ5_TP_B		0x5f584
> > > +#define PIPEDMC_FPQ_TP(pipe, fq_id)	_MMIO_PIPEDMC_FPQ((pipe),
> (fq_id), \
> > > +
> > > _PIPEDMC_FPQ1_TP_A, _PIPEDMC_FPQ2_TP_A, \
> > > +
> > > _PIPEDMC_FPQ3_TP_A, _PIPEDMC_FPQ4_TP_A, \
> > > +
> > > _PIPEDMC_FPQ1_TP_B, _PIPEDMC_FPQ2_TP_B, \
> > > +
> > > _PIPEDMC_FPQ3_TP_B, _PIPEDMC_FPQ4_TP_B)
> > > +
> > > +#define _PIPEDMC_FPQ1_CHP_A		0x5f130
> > > +#define _PIPEDMC_FPQ2_CHP_A		0x5f140
> > > +#define _PIPEDMC_FPQ3_CHP_A		0x5f170
> > > +#define _PIPEDMC_FPQ4_CHP_A		0x5f17c
> > > +#define _PIPEDMC_FPQ5_CHP_A		0x5f188
> > > +#define _PIPEDMC_FPQ1_CHP_B		0x5f530
> > > +#define _PIPEDMC_FPQ2_CHP_B		0x5f540
> > > +#define _PIPEDMC_FPQ3_CHP_B		0x5f570
> > > +#define _PIPEDMC_FPQ4_CHP_B		0x5f57c
> > > +#define _PIPEDMC_FPQ5_CHP_B		0x5f588
> > > +#define PIPEDMC_FPQ_CHP(pipe, fq_id)	_MMIO_PIPEDMC_FPQ((pipe),
> (fq_id), \
> > > +
> > > _PIPEDMC_FPQ1_CHP_A, _PIPEDMC_FPQ2_CHP_A, \
> > > +
> > > _PIPEDMC_FPQ3_CHP_A, _PIPEDMC_FPQ4_CHP_A, \
> > > +
> > > _PIPEDMC_FPQ1_CHP_B, _PIPEDMC_FPQ2_CHP_B, \
> > > +
> > > _PIPEDMC_FPQ3_CHP_B, _PIPEDMC_FPQ4_CHP_B)
> > > +
> > > +#define _PIPEDMC_FPQ_TS_A		0x5f134
> > > +#define _PIPEDMC_FPQ_TS_B		0x5f534
> > > +#define PIPEDMC_FPQ_TS(pipe)		_MMIO_PIPE((pipe),
> > > _PIPEDMC_FPQ_TS_A, _PIPEDMC_FPQ_TS_B)
> > > +
> > > +#define _PIPEDMC_SCANLINE_RO_A		0x5f144
> > > +#define _PIPEDMC_SCANLINE_RO_B		0x5f544
> > > +#define PIPEDMC_SCANLINE_RO(pipe)	_MMIO_PIPE((pipe),
> > > _PIPEDMC_SCANLINE_RO_A, _PIPEDMC_SCANLINE_RO_B)
> > > +
> > > +#define _PIPEDMC_FPQ_CTL1_A		0x5f160
> > > +#define _PIPEDMC_FPQ_CTL1_B		0x5f560
> > > +#define PIPEDMC_FPQ_CTL1(pipe)		_MMIO_PIPE((pipe),
> > > _PIPEDMC_FPQ_CTL1_A, _PIPEDMC_FPQ_CTL1_B)
> > > +#define   PIPEDMC_SW_DMC_WAKE		REG_BIT(0)
> > > +
> > > +#define _PIPEDMC_FPQ_CTL2_A		0x5f164
> > > +#define _PIPEDMC_FPQ_CTL2_B		0x5f564
> > > +#define PIPEDMC_FPQ_CTL2(pipe)		_MMIO_PIPE((pipe),
> > > _PIPEDMC_FPQ_CTL2_A, _PIPEDMC_FPQ_CTL2_B)
> > > +#define   PIPEDMC_DMC_INT_AT_DELAYED_VBLANK	REG_BIT(1)
> > > +#define   PIPEDMC_W1_DMC_WAKE			REG_BIT(0)
> > > +
> > >  #define _PIPEDMC_INTERRUPT_A		0x5f190 /* lnl+ */
> > >  #define _PIPEDMC_INTERRUPT_B		0x5f590 /* lnl+ */
> > >  #define PIPEDMC_INTERRUPT(pipe)		_MMIO_PIPE((pipe),
> > > _PIPEDMC_INTERRUPT_A, _PIPEDMC_INTERRUPT_B) @@ -394,4 +538,30
> @@
> > > enum pipedmc_event_id {
> > >  #define  DMC_WAKELOCK_CTL_REQ	 REG_BIT(31)
> > >  #define  DMC_WAKELOCK_CTL_ACK	 REG_BIT(15)
> > >
> > > +#define DMC_FQ_W2_PTS_CFG_SEL	_MMIO(0x8f240)
> > > +#define   PIPE_D_DMC_W2_PTS_CONFIG_SELECT_MASK
> > > 	REG_GENMASK(25, 24)
> >
> > This is extended to 3 bit 24:26, please check once.
>=20
> Doesn't really matter for now as we don't have that many pipes, but might=
 as well
> use the wider masks I guess.

Yeah, would be good to extend these.

Regards,
Uma Shankar

> >
> > > +#define   PIPE_D_DMC_W2_PTS_CONFIG_SELECT(pipe)
> > > 	REG_FIELD_PREP(PIPE_D_DMC_W2_PTS_CONFIG_SELECT_MASK,
> > > (pipe))
> > > +#define   PIPE_C_DMC_W2_PTS_CONFIG_SELECT_MASK
> > > 	REG_GENMASK(17, 16)
> >
> > This as well, 16:18
> >
> > > +#define   PIPE_C_DMC_W2_PTS_CONFIG_SELECT(pipe)
> > > 	REG_FIELD_PREP(PIPE_C_DMC_W2_PTS_CONFIG_SELECT_MASK,
> > > (pipe))
> > > +#define   PIPE_B_DMC_W2_PTS_CONFIG_SELECT_MASK
> > > 	REG_GENMASK(9, 8)
> >
> > This is 8:10
> >
> > > +#define   PIPE_B_DMC_W2_PTS_CONFIG_SELECT(pipe)
> > > 	REG_FIELD_PREP(PIPE_B_DMC_W2_PTS_CONFIG_SELECT_MASK,
> > > (pipe))
> > > +#define   PIPE_A_DMC_W2_PTS_CONFIG_SELECT_MASK
> > > 	REG_GENMASK(1, 0)
> >
> > This is 0:2.
> >
> > > +#define   PIPE_A_DMC_W2_PTS_CONFIG_SELECT(pipe)
> > > 	REG_FIELD_PREP(PIPE_A_DMC_W2_PTS_CONFIG_SELECT_MASK,
> > > (pipe))
> > > +
> > > +/* planel/general flip queue entries */
> > > +#define PIPEDMC_FQ_RAM(start_mmioaddr, i)
> 	_MMIO((start_mmioaddr) + (i)
> > > * 4)
> > > +/* DW0 pts */
> > > +/* DW1 head */
> > > +/* DW2 size/etc. */
> > > +#define FQ_INTERRUPT		REG_BIT(31)
> > > +#define FQ_DSB_ID_MASK		REG_GENMASK(30, 29)
> > > +#define FQ_DSB_ID(dsb_id)	REG_FIELD_PREP(FQ_DSB_ID_MASK, (dsb_id))
> > > +#define FQ_EXECUTED		REG_BIT(28)
> > > +#define FQ_DSB_SIZE_MASK	REG_GENMASK(15, 0)
> > > +#define FQ_DSB_SIZE(size)	REG_FIELD_PREP(FQ_DSB_SIZE_MASK, (size))
> > > +/* DW3 reserved (plane queues) */
> > > +/* DW3 second DSB head (general queue) */
> > > +/* DW4 second DSB size/etc. (general queue) */
> > > +/* DW5 reserved (general queue) */
> > > +
> > >  #endif /* __INTEL_DMC_REGS_H__ */
> > > --
> > > 2.49.0
> >
>=20
> --
> Ville Syrj=E4l=E4
> Intel
