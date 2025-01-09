Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47091A07540
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2025 13:05:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45BD410ED7D;
	Thu,  9 Jan 2025 12:05:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YpnlxFf1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF9FA10ED7D
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jan 2025 12:05:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736424319; x=1767960319;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=g/ot6NVIsOrhWGbqDVUwdWuf1gHYbO5xh+f/hsS+KMs=;
 b=YpnlxFf1JhhVrOf5P0rTU38QVML19e5pIZ6RlYZhO2WPEZUkW3zirN9I
 g3XWKi0O3SaJEC/JvG6dtxNxZFfbKZa1pVr4m989OgOT7Q0nz5p+t2AD+
 u4/7Z8bELjL/YaTOVaB0T2JWxLp/NosI/6Tj4dSg8a6CC91V18cWIL65q
 PTA2igjseAMMzgjdrUmrQGElHRJwSjQg72y705ZuSufJAoQgYFwSHuG/H
 uw6HcoFoK23sjMK0UEK5/4nVfD6SHfwzMNdrEoPC6q3uEx7vsfghEO67k
 xOBouMIZ2CKQ9TPv41VhWCUcQl9Fwm7hrA6A07sLD8d0h1lFgOC70u7lH Q==;
X-CSE-ConnectionGUID: E2vKPczzRg2pqz9nQpxorg==
X-CSE-MsgGUID: BvN/3kJRSMG8ej0vIJLKcg==
X-IronPort-AV: E=McAfee;i="6700,10204,11309"; a="36700646"
X-IronPort-AV: E=Sophos;i="6.12,301,1728975600"; d="scan'208";a="36700646"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2025 04:05:19 -0800
X-CSE-ConnectionGUID: rHvGYYjmTdavMesq2AQ/KQ==
X-CSE-MsgGUID: 3MwoUZkGTXWf22kO7MOVmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,301,1728975600"; d="scan'208";a="103456604"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Jan 2025 04:05:19 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 9 Jan 2025 04:05:18 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 9 Jan 2025 04:05:18 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 9 Jan 2025 04:05:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Gb5ZL6OeYLlZux1oITJBnUGHdCVfk0UjN89eJ4Uo4CUbgMf+ZICI/0/fD6DIy1e2BwKQT87kbYN5nXqGp9dxp6bVAFA1W3sCE92ePVQnpMTaiLe6t7f0G/NPlqGsl4F40/PSjWkadAkrW+kEsLYohujuF+LZ1bUSYlmnEBho7+Eu5uRWkGMNtF30k1e7c7XlVF7lvkaTo8ctcDmNAMZrIZjzfT1XYzvs1HYuAEjOC6imAx2g9T+2c08r6UAdrdMWp2PhhphBKGsveliduyaP7h8z6n4mrCLnyBtsOV3GvE4ncPGhrYL5OteISCC7gwZs2IsmOSJnSAcSdcd/Tbaq8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Jgo7wdkFRz0Gg3ywtMKtAEVKlgi2R3N/OIPWgTT0qss=;
 b=NsRevKjbMfqRaxh2WI3KJ5Hq7fkWLQaGePmCYDxFeU1U4jGCfKNZuRXTaNVMsSHRZBhDQlois4zi3MQIKB/P9pE6eQY/tv7Zq3G54728pEnkU7ShB0679xTD7dKSxiJ7sbWukmPLsThGjmb27XAkSgFadwvl1pbc6MbZ40OkhNMcCrmqpHax9CN87RM1ZG5aGBDGKJCVqt8qhJWIMBKLKN2GMu4J+hydIZ6CoUKU6L1bgM3GBqxNPSSZHhxp+nhswo4LkichUn9F/tr8L8jvocRovV/6JtOMwnbo+rAuPNFfv1ZPQuyl0OYhzDAXtPPHwMp60Mg3bBtem37wlOV2TA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6266.namprd11.prod.outlook.com (2603:10b6:208:3e6::12)
 by DS0PR11MB8051.namprd11.prod.outlook.com (2603:10b6:8:121::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.12; Thu, 9 Jan
 2025 12:04:35 +0000
Received: from IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::7f3a:914e:c90e:34fb]) by IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::7f3a:914e:c90e:34fb%6]) with mapi id 15.20.8335.010; Thu, 9 Jan 2025
 12:04:35 +0000
From: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/bios: Define eDP pipe joiner feature for VBT
Thread-Topic: [PATCH] drm/i915/bios: Define eDP pipe joiner feature for VBT
Thread-Index: AQHbYdq77pP7e7EtyEKx2GSjNWQKBLMNGfQAgAE/fkA=
Date: Thu, 9 Jan 2025 12:04:35 +0000
Message-ID: <IA1PR11MB62662673485BCD1BF8A62C75E2132@IA1PR11MB6266.namprd11.prod.outlook.com>
References: <20250108143638.1125237-1-dnyaneshwar.bhadane@intel.com>
 <87bjwhkzpp.fsf@intel.com>
In-Reply-To: <87bjwhkzpp.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6266:EE_|DS0PR11MB8051:EE_
x-ms-office365-filtering-correlation-id: 81273998-4253-4761-c350-08dd30a5c8e8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?AbE8tRB6P/CiCDur8r13q6EQF03AV+EnoaYAT2ULL+OL6TVcTZvodbh3VJqN?=
 =?us-ascii?Q?DBsOWdT1hMVWCegE0ivddhirBhpSYLqLvvHuOXn6OoGYD9xevAJ4x8XMTKNS?=
 =?us-ascii?Q?rfSavxpNByorkcFSMyEQN52y4NcWcormeWuzzPbtAKP2cqPtS5rIMbvbCgmZ?=
 =?us-ascii?Q?z6S2CBTL4f55XNOC/y/HMmdOweAHjvxmUdd9fDVEegDadeB2gS8qBRmQWsV5?=
 =?us-ascii?Q?o0pvJCS4XvLrXVfX2KccHRWa+PS0rJl80xFUB403wcgCW7pcUoB1XTN3tQ77?=
 =?us-ascii?Q?MlJHBnzoEkF3TkMiXKPWpnVZEo1a3pAb+zHQyXKDXK+rqVdIoVE90Ttbu5K8?=
 =?us-ascii?Q?oPig5Os2NTJGUPsPi/Y1/ThMKZVEV/qNAjo82uCSPWRC788C/Ai/cO8OHnAN?=
 =?us-ascii?Q?NcjSP9m6/qd0X6RTNoXgJLLrEfuNPXERo8djIl96BAbcZ4PFWGOwYnVlEsJk?=
 =?us-ascii?Q?bDzwFcA+j9eeakDqp0lLmrDfimebla45sNOxzSIRJchBRSb6Po50kf0a2VsO?=
 =?us-ascii?Q?9W+sciSeo0pGLNhr6SsuTlQGg47C8NST1VhnvJGcRGEeTRJroLnQAIEzoau6?=
 =?us-ascii?Q?DBaBh/j5u2kTUVo1VvCq7Z0e6UXmGsbHvzTGmCq2MQsW2G9DotUGcD+xnFEp?=
 =?us-ascii?Q?TyyoqyQXI9icb39ksv5x7+fpA+6081mE8IfwHz68iQzqRauAJkJkc4P6SOrZ?=
 =?us-ascii?Q?xMSVB9xx4LITlbtqYwHvuC8faz8vPRUvNSFdEnD7g9ZVbz1UmJuiBGHNZ2Y+?=
 =?us-ascii?Q?uqzR8gJsy5KW0/ZmJIh67wqEqxRXEcOF9H7+U0vtuxqXHrHseqkjrhbdeL0l?=
 =?us-ascii?Q?fH3zaVJl7+as9BvNMikA3F3Dqrcap8jPbgKLEIBKx4PleSP8JaHl/yQu6jNt?=
 =?us-ascii?Q?pqpFOnMBagMnpsDENXVecvJ6jFXc4WghHT1q8xWHoJr8KSduVPm+EK88NhPh?=
 =?us-ascii?Q?brG3gN7FB2EBGXI0Z6Wb15c3F0ZXOkMD0OVjaYC0hblMKaIj033pZDPt4SWT?=
 =?us-ascii?Q?87Jnk3SPzrueXL/xt2SeGin4cSCTWPOCCmZv5/hOVr/0PMl9FfFvOIpVxGqk?=
 =?us-ascii?Q?wMSzL59nPEDdw9lrwS9C96qHNqSga3esnAbMaV4qGTSLdHRfDWS2OmC2/l/T?=
 =?us-ascii?Q?Xh8wrR5q/CI/f08AotwCRt/pbCtRUHRQd4GDhTkiMdBTVYJ6l715SYQVWo6Q?=
 =?us-ascii?Q?trIkosyKBreqQzu1Y2CS8Ywrg1x828loxh3V0EHcL27xsP+x3wg4mnpV3JHD?=
 =?us-ascii?Q?qFVDDHEdvk1bE2btLD0u4BzY1rLLMiWot68jW+ZPtswE4cmNlarnMKwseY8g?=
 =?us-ascii?Q?0PazxfXKk6QXch1ckP48lwAfKPsry8MCRH6x97VeWtCKIoRERVu/bZsVcLue?=
 =?us-ascii?Q?7hLSs/QFS15FvQn7J6evdZFulElbQ0+ViHxZ01MD4c8s38eHMBXSeIOPe1RI?=
 =?us-ascii?Q?Rh52OKLDFaguoKv024mFrk9sgKSRMtSk?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6266.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?0C/td4tGYsROjdNRRRLQ6gnyY9JJAtPi21eGs2wIQ6LyHp5X0kHpVyjwyeB3?=
 =?us-ascii?Q?9hEdX0cLvOAwjgTjJKFJ0Jm6gGlC1mIXzlngRTOfRsV47y3iHU9tIgJ2Z2sl?=
 =?us-ascii?Q?Ln93HREoHmIZ7GOUHO4SGoQ9m0cqu2RLbQ14I7oEtMx/fClqLJApElh7629b?=
 =?us-ascii?Q?nKIB3EAAtOsY53l71ypIqRGcyyZOYSbf0jfZpN3T7sL0jO+F71dLPhFm6WUO?=
 =?us-ascii?Q?aEKlOUdTl/m1fAS+61s+liok+T2t+H0MkfFmq8Ov5Gg0mw0JmQ/GSFJy/AIt?=
 =?us-ascii?Q?398oAN+E2Z7gopKp0JS0xpk+dIgdcwWh5burN3QSd99H5T5iQeRFXMOBbf9k?=
 =?us-ascii?Q?MnitVSAKLb16NEFADSTMAl56a5lJY5rYSUPb9Q90QF49Qmn84xEcjo6xPuZd?=
 =?us-ascii?Q?ycl/FKJ+Ohqavgysh/NRIwzI+f0DPGbCFlCr4D/7qA1J/yt284we7sLxMVZZ?=
 =?us-ascii?Q?2ssKWEG/MGi1NqssTvec05q58s8zMZsqzR7hjwSE0xhGt565r4XclLqg+rBF?=
 =?us-ascii?Q?BquRFq6ePWrnAobITOxBryfTg9VK9Af5InM7ZM1wGEThbc1PBGLGyVGnYldy?=
 =?us-ascii?Q?7E6BQq8hCru2xkHS7swJ98k9pZrnfYddHszhJIdPJ853q91nqQ3FzPwPtAey?=
 =?us-ascii?Q?vKWkwZ9b5+nI5RAAdNhc1nWZa2/ciod9U1cCsYK3Xx9AL3etGqajcc78e/Aq?=
 =?us-ascii?Q?MJS9kZgeDKfSnB5giuB2DE95/UWoDgPfyQT7I1kaZbeY3NE37Fk8tkbWrNJV?=
 =?us-ascii?Q?yywKDbz9ezqV1laTj0cP/oKxmAJsuiXZKQy+h+H2onZQeNuTnbGjeNH1cfIy?=
 =?us-ascii?Q?1hKYoyzlhCnFLMOJxwDYqBEqop2z6NrSKLyy/NaKdxuwbRv1DEKpDRvvGs5p?=
 =?us-ascii?Q?p5o/Vv9sWWnDEf2FqCJ8gVI9B7Xa6en41Qg+0QGdX0IEWlaUMXXicLCyoGnh?=
 =?us-ascii?Q?7e/eiLMQJi7neHP7Tpjf3NZnZzU40gqeWFH3MNaTdIJVI3bV+nX1TYDyXRVS?=
 =?us-ascii?Q?lnnuxZDpDy9UeGGqk4LKi2hT+DXRdD89L4T3AVcks3QeMBbY+yLAYyOv1tjV?=
 =?us-ascii?Q?5BfAcmASd07cYlWwjhdN+PNV/AjtCVGv3dBOUkHfj/p3Vv1ME0qKu3EbZoEr?=
 =?us-ascii?Q?zhAUDHL5owkWvCzMh3d86+dbUeURgolpkWnpsXMYX3LrS6rbMpz1k+VuyMpF?=
 =?us-ascii?Q?kWTJziIOO+SCeaavNxRf5zw8++ED473I/OIjEZFc6FcdEMPzk2HOQb/FJDr8?=
 =?us-ascii?Q?y/og51H/fJtS04Nn/+hOWWc+4c2ttFSQlQwQ5AAskp2nAvGqwXO5dkTbOXLp?=
 =?us-ascii?Q?cLqh3VNcAN+xbGznD3BF9nGBpM98FQCLvoXZP3/nGcGKWqZ24yxF4QPl/q0R?=
 =?us-ascii?Q?PC1h3tX1fQ8IAv5OOv+qFO5ws0ZTEdKqWaakrxuNhiqmzNek5woQhPGfpTlp?=
 =?us-ascii?Q?M5vc88Vq5Fqk0XYvz2PXvSKq7/T2KXYUM2euJfte91GbJcDR+ifuNgMYXKM4?=
 =?us-ascii?Q?rp7KPy6N6+PvEAnrD6t4nPTDEGO6DrpyHUR+y88Oy2ujgaAmAZfJIp4ZZF8L?=
 =?us-ascii?Q?LBRtID1SWX4KPpuyDIDQB40icNLNadAiv+6eGWTY3ZsUpynCRuKd2CJLE1br?=
 =?us-ascii?Q?Pw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6266.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 81273998-4253-4761-c350-08dd30a5c8e8
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jan 2025 12:04:35.4738 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YKz6+LnYcyI8tnWhJNnBWZTWu7LNHiDhPICbkMtEz4c3JvkHXQSHARUhu8d4VS6rCzlhoeRdflPa6AS5q9cB1QS32/jSS046IOnWB7b/SXA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8051
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
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Wednesday, January 8, 2025 10:31 PM
> To: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>
> Subject: Re: [PATCH] drm/i915/bios: Define eDP pipe joiner feature for VB=
T
>=20
> On Wed, 08 Jan 2025, Dnyaneshwar Bhadane
> <dnyaneshwar.bhadane@intel.com> wrote:
> > There is new field "edp pipe joiner feature" size of 2 bytes in the
> > eDP VBT block. Each bit represent panel number to be enable/disable
> > for this feature.
> >
> > Default value:
> > For ARL platform, 0x0000 to keep the feature disabled by default.
> > Xe3lpd onwards, 0xFFFF to keep the feature enable by default by VBT.
> >
> > Bspec: 20142
> > Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
>=20
> The patch does it ways, so...
>=20
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
>=20
> ...but are you going to use the info for something?

It was just to note for the future use. Thanks.

Regards,=20
Dnyaneshwar
>=20
> BR,
> Jani.
>=20
>=20
> > ---
> >  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> > b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> > index e9b809568cd4..2fdad5170896 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> > +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> > @@ -1090,6 +1090,7 @@ struct bdb_edp {
> >  	u16 edp_dsc_disable;					/* 251+ */
> >  	u16 t6_delay_support;					/* 260+ */
> >  	u16 link_idle_time[16];					/* 260+ */
> > +	u16 edp_pipe_joiner_feature;				/* 261+ */
> >  } __packed;
> >
> >  /*
>=20
> --
> Jani Nikula, Intel
