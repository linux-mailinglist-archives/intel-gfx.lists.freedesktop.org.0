Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D27C5C215ED
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Oct 2025 18:06:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9627110E2AD;
	Thu, 30 Oct 2025 17:06:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ffxQj2rJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3468010E2AD;
 Thu, 30 Oct 2025 17:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761844012; x=1793380012;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=f304sFdMdi2fY5RoqsCInZ1Ahme2VhMmhP58aFM78x8=;
 b=ffxQj2rJVmiRQ7iXPO1l1h6gQ+ivPqv5fpk740QWrnDq9trx84dvo+aO
 DAK5LVnZ2levst2/NKqfohIQ+irlmSRIoO2MyBmTQ2z51SfaOGvocADLH
 VlpA8WpzpuedEBH4BnSAvIQtRXyXYR8Ax8t2ybbdyiRwuoxyFhHHB5maT
 VpLJhZMA9ZsrQX3EWVTeBE+1qpgANdaIQuh3nFthxu9afwolMTFB6GnFx
 qcEH8ocaXGLaoNU3vOEqQEKJuyU1T7YnGroASjAqtIqr2HVGLFkaNKF47
 QX9LP0WIO+vaZMqWoVw3baCz6qkyFjVYkGxuFqVR408CX8Oira6BwNHbT A==;
X-CSE-ConnectionGUID: LP1AzarMQRircrMpV1XpcA==
X-CSE-MsgGUID: mdjhLWtCRDqny0cWdCkLpA==
X-IronPort-AV: E=McAfee;i="6800,10657,11598"; a="75343214"
X-IronPort-AV: E=Sophos;i="6.19,267,1754982000"; d="scan'208";a="75343214"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 10:06:51 -0700
X-CSE-ConnectionGUID: 9L4Ic1uhQrm19D2RLO3QiQ==
X-CSE-MsgGUID: nV6TK0AnQCy8DRmEs/Zacg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,267,1754982000"; d="scan'208";a="223238708"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 10:06:52 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 30 Oct 2025 10:06:51 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 30 Oct 2025 10:06:51 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.28) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 30 Oct 2025 10:06:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=T5fqfO8A1mgFZUk8grvAOvBwmfvdEiVVv3CSiPeTF4J281nqJs8ooIzXxfQhwuBm8qaYeGzYnZAB8Uo/6KA8Cs27CFl4JFtPIskdWDmtRw87A58/GwBDyGxtcvpAZmf9N00JIFAvWnuXcphgqThe5LamV22Eur5cYdIhtdPtTdHkBens9US3SGxABSASB3806IQkZxyvQz51DmItbGYvCbxmsQiLuJkNvHsv+C+Jq64q8Bu1H+6KJoY6LhYwwr/2cCy/ZiZOcKLgdi4AAvECrc03z8uoi1L80Zf672lkBdthVkdNkVQBxI4wBVn8aMr1/tx8AGawxrV4PD3/E8IDGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lHT4jOVMNIggt+SL/or7YcNuOz6DfF0POIbrN//wB6w=;
 b=ALLG+5aUguGcAOj109LM4WwAfnaSvVgAM43MckvPo8tgXAjesf9pkfhLgj9XKUb7UDp/Lcs7AvqneTRTcntlPMX0/DoM/Y7DJS01ON85GKkGHKkvMVQ3Sd2VoBaFjJfVvDZcIvjSw+JUUfk5uPNlnze8CxOroc93eCLYb1kK7/g1WsZLno/WouoEJWJZkvCPPzcLoiF4NIpq7haaceaD0D39a3Jo8VATcoTtTSzZkV/A8qxxLp8PxokC7ofNS1wqoLJtvT6Kkp1MY3ltNWI6fVcrT2+W9Ax4ruUJuEHTp8cfnAaBc4IOpTRbJWUv114i7MEql1pW+JwamtlWZYblEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 LV2PR11MB5974.namprd11.prod.outlook.com (2603:10b6:408:14c::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.12; Thu, 30 Oct
 2025 17:06:48 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%4]) with mapi id 15.20.9275.011; Thu, 30 Oct 2025
 17:06:48 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Sousa, Gustavo" <gustavo.sousa@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "Syrjala, Ville" <ville.syrjala@intel.com>
Subject: RE: [PATCH v2 4/4] drm/i915/xe3p_lpd: use pixel normalizer for fp16
 formats for FBC
Thread-Topic: [PATCH v2 4/4] drm/i915/xe3p_lpd: use pixel normalizer for fp16
 formats for FBC
Thread-Index: AQHcR0dOU2hXSkak1UG7VaCLhCoX6bTa8F6w
Date: Thu, 30 Oct 2025 17:06:48 +0000
Message-ID: <DM4PR11MB6360652BE5CE892C80AF27C3F4FBA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20251027134001.325064-1-vinod.govindapillai@intel.com>
 <20251027134001.325064-5-vinod.govindapillai@intel.com>
In-Reply-To: <20251027134001.325064-5-vinod.govindapillai@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|LV2PR11MB5974:EE_
x-ms-office365-filtering-correlation-id: af9dee20-40e4-4fc1-48ee-08de17d6b642
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?AbAGnjU3g0FSXJdPwF99YJvr2df0/gJldLhHslA8zwdsb84PpGbRnv62UuNR?=
 =?us-ascii?Q?qH2idTVrW//l2/1T0VtM6tIW13GtqozUR7aTkbjziGpPZcTZe0JeSwE+4Nr6?=
 =?us-ascii?Q?42/mJ31YlPvKO2HVEsOzbeiMN3eimshjH94KWsFxqLt4HHPMGmBsTQZ8Y1dW?=
 =?us-ascii?Q?jZOa+0JxFmzLfYHiw5Z8yg3pwkYB8s9J9mQR31LvExJC+YXWjTX0SWVKlCil?=
 =?us-ascii?Q?6MsuJotiuy+LoJTrp5oNCjWE3wiHzM446qNuQwE8t53j4Y3Nul6DeAa54dKt?=
 =?us-ascii?Q?dim7svYybfYLWbiYcJgiucK7DHJVyVev9DF05Do+YVGDwIojgR/yUq1ADgpi?=
 =?us-ascii?Q?onON8TFw53orlVgZ4ajoxvaYM49bNw6iuWKQYP0Gfw99ohoU54mxMZCShpFn?=
 =?us-ascii?Q?ZWZbkJ+pzzC2mHe+VrtltktcN/yDPOb9ds3PEg5mc7A5FwMKcWKIFxyREp1X?=
 =?us-ascii?Q?qC2yalANJggUK2ryTExE7xzpcshBFkHFyIznFhU7J5+yGpIPc+1GONy5CIZv?=
 =?us-ascii?Q?LsuwSvEdUGEayoq1OmmOD0SldJ6S/7jP3cIo4M5ho46rbsHSwxdULvmzaISu?=
 =?us-ascii?Q?qza1Qy363156sarsUtyZtd0F4dkkmEWj1HALsdmCF09ltTutbSrEYcG4N3it?=
 =?us-ascii?Q?RASTM45ax/YXZptHbTLhOP/eVt2tqXpLB4k+nq9fr6LP2YwBGD8RVQtJhf+G?=
 =?us-ascii?Q?8xpmoeQiN4Zpcbfzebhx0P96WrY5JFSaS4WH7k6Sp6xBkkqTfn4FDfP1pL+J?=
 =?us-ascii?Q?6sPVMUM0suP2559QZvA06LPUEhvnwkdjDhuO/rIcXlFdWJ1/AnVt4id02jOy?=
 =?us-ascii?Q?Vg8hU9ed1oJqNmnWBXytXj7fxg0FY+g5zlRF5bt0eqJzEf8pvtE3j8jS4f3s?=
 =?us-ascii?Q?6sRV76U3L27nAfKT1IUInwt4AMdzRMkLMWyuLnSU81vhEzn3sjJgm0PlGBft?=
 =?us-ascii?Q?PE1CbsIpxYhIUc7BdVTkc6pSTp9gSgTzmY4P2AEhmQj9RiUZAO4EWssgSmDp?=
 =?us-ascii?Q?Jwzag8z9Mu3FezAytxbERutE4KcukIIStBNQZCi10B2ZJTDgnFifGN4YCuIn?=
 =?us-ascii?Q?umJ1aulFfuh7wBasy8ZHgYA2U8jkBMdiJ073K345gbAZvMqMqkrn5U5BmXcs?=
 =?us-ascii?Q?KEDJfsKMy/zIprJ+YrYVjmZSoQMDKGfoQ+G8eMnWthFXzkEeevxNExv6vj7m?=
 =?us-ascii?Q?IezjqlEqxyHtG7C/e3f9Rlscf9dMpaTMQfBUjZkXXKqan1x5cx/s2NXwZPBF?=
 =?us-ascii?Q?ajhkviKlksV68Y3ErFIea8UYCKuOb5YyZM+8Dfgx5tR8Y6KNAbJfX1y+aJEI?=
 =?us-ascii?Q?5AjS/Lv2wEoNy7S1orJnJDMEKEP0+9bfJiRumbptrEAoUkSzCFcv1XLNywL5?=
 =?us-ascii?Q?VA6CdsoR6qa9owJRVYZ+QkKWA+huJk8B5gmOtAO7tMW37g5LmfXg33dz36cM?=
 =?us-ascii?Q?ortzcKdHIQ3zcp3nF1G0FlmNAwSxe3SJll2ntinZoVlYb8uLK4wlDMzLHyfE?=
 =?us-ascii?Q?dPmS5c4JcA/Osv+ekeFR248W+VX8uQUAlCRQ?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?fKJHHVlvqxg9sk/vHsNsI/VeZEroEagu51cVkncYfFwJVoWrVtznPt1FVmDh?=
 =?us-ascii?Q?F5ljU42Vn6jBYOM1duue59LStU6Wr9hexH+S4CI/1Br/kEgKxjt9O6KbWPKB?=
 =?us-ascii?Q?HyQx4S3PsXvK9vCPfJRCUQK24lyCEcQnuhrYTveWhXOQ71TBpePQ6eHEjI3b?=
 =?us-ascii?Q?tkJd88RcIXJry9QpMysGeupbscScWNrlrkzIlZtTa9+yt1v75XpAtTimZNT7?=
 =?us-ascii?Q?eSsHgWbb2jf9dXXY8/n/OID1QqwoHq2V/fBgsYpAYz3+RziGyHa35Po4oxOz?=
 =?us-ascii?Q?0sNsYN41KsP/rfnv+JIUmPogmkvuNIDMOCSATYQVSRiAxMm2wv/kuokWe2RD?=
 =?us-ascii?Q?gQjoi3WzD0J6h2UTZc1Y9K+TXfSJ/6eYL57JHQLuJRWcn2+UiP8ogLeJ4foC?=
 =?us-ascii?Q?l/LLsr+dr+ncz1FWlfR2gBERpCVAdoE5Q36KFvMPnBDMaIpbFg96aqDDH6qy?=
 =?us-ascii?Q?/VEOmD+Ks5iVHEqKG99g8SEQaoIMfqey3sNxbspF63zdvk7bVswv0hAEYi7l?=
 =?us-ascii?Q?nAhanO5L0i+SO6a3OXkyCMQYyWPXAH0ELS7cbSLJ8q9X35BE0ytBo1HyOdlN?=
 =?us-ascii?Q?hr88KCi8BOJiSpC4sBjcjfZqY5mZ3qnWAUxTSe/o9/AQu9bK7tUDtf9yAPpM?=
 =?us-ascii?Q?n+rx9jYMzut3apHICZfEAlT5LzcgTr1eEDjyC1W2ZwAI3FyBCPvOc1xlvay4?=
 =?us-ascii?Q?ylhwC6O8yGDfvt3hmvuwOnKr8juezFn1+vFzfjmM99pKLq/jpzp+c0uvWFql?=
 =?us-ascii?Q?EJiRJH30HMLh/Igz/m1gkdXXcLlBbXvt4xxi2/K12qx0/WMeoIXMnXtUg/p6?=
 =?us-ascii?Q?uZTHPCxiGtCd7kV/UDdbz3rshOYQV6tTT+cWJFDgsMxAUaOUXt3nT1ShosB1?=
 =?us-ascii?Q?IyqIS0Jgf19L+iMYoeN3SwveNntv2gi47iW1YI5BbTZinry3IfL458pvYIRx?=
 =?us-ascii?Q?lilFFS5Zb1o0aN/ZjQaKeimKtxig1XEidTCofRY0czL1DlJmeoDC4rYVKz/H?=
 =?us-ascii?Q?chhmiwEW9PDi1v6arZlt9nDa8C62Rve/y5LSuhjqgBZIqvPf29J1vWpq1nsP?=
 =?us-ascii?Q?sX5yvi1UigG4icGlR0DFxGHngMnuc2YpiobfNhVAWTkgiJjmV7MVKZOtur04?=
 =?us-ascii?Q?kTw5PcZhCq238XC7TcaTZshbG9epzR6MDjgfYhJ6xwDZFis7GX0zox4iopuF?=
 =?us-ascii?Q?cpwCeG0gxKrAjM/9XYHEDVnvtSZ8rOQNVXtCU+GyItrCMwg6/RS+Q6cvmYg4?=
 =?us-ascii?Q?JhI8Lj00iNP23r/Gtx1UESy4u7o9IAz7/iKshh8gHbWAcpzOhYv7rhl7sUzp?=
 =?us-ascii?Q?5X/Du3DW6OZW3Jhrgoo36fLgfyjcTWua6gmXIxgJV+VuWC+StW1RO4pBH/ub?=
 =?us-ascii?Q?JmbvDltxMYiUxwUlqH+12aWDPHpA/lTwgJ0MriOJ98X1lXVhaa0/J16tUaZp?=
 =?us-ascii?Q?3VPfJK9Dtbp8bywzG/+8x3tkeMwueaEXsssMSxu6bWAbH/ppfoNUosRT3mLd?=
 =?us-ascii?Q?vPhVjDc7XhjQ8EBQOjqtnf9BZ79MKtKZpiS3RnDguGHW4d2yGAYkf2Cc56vU?=
 =?us-ascii?Q?buMeJgeQtTGOS/PWH/Fkt05V7DNDmTz+DCjgMwr1?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: af9dee20-40e4-4fc1-48ee-08de17d6b642
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Oct 2025 17:06:48.1240 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Oi96/oKDfmZMDKLH+5XRmw+Lt68kx3HdQhF234mH0OJtkxvggQUdmVKcScO0VA00nf+uNqbvT0D1ZnCVXzIjig==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB5974
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
> From: Govindapillai, Vinod <vinod.govindapillai@intel.com>
> Sent: Monday, October 27, 2025 7:10 PM
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Govindapillai, Vinod <vinod.govindapillai@intel.com>; Sousa, Gustavo
> <gustavo.sousa@intel.com>; Nikula, Jani <jani.nikula@intel.com>; Syrjala,=
 Ville
> <ville.syrjala@intel.com>; Shankar, Uma <uma.shankar@intel.com>
> Subject: [PATCH v2 4/4] drm/i915/xe3p_lpd: use pixel normalizer for fp16 =
formats
> for FBC
>=20
> There is a hw restriction that we could enable the FBC for FP16 formats o=
nly if the
> pixel normalization block is enabled. Hence enable the pixel normalizer b=
lock with
> normalzation factor as
> 1.0 for the supported FP16 formats to get the FBC enabled. Two existing h=
elper
> function definitions are moved up to avoid the forward declarations as pa=
rt of this
> patch as well.
>=20
> v2: sw/hw state differentiation on handling pixel normalizer (Jani)

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Bspec: 69863, 68881
> Cc: Shekhar Chauhan <shekhar.chauhan@intel.com>
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c      |  9 +++
>  drivers/gpu/drm/i915/display/intel_fbc.h      |  2 +
>  .../drm/i915/display/skl_universal_plane.c    | 65 ++++++++++++++-----
>  .../i915/display/skl_universal_plane_regs.h   | 12 ++++
>  4 files changed, 71 insertions(+), 17 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c
> b/drivers/gpu/drm/i915/display/intel_fbc.c
> index 6cab6e7cead3..d33009424863 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -1119,6 +1119,15 @@ static bool xe3p_lpd_fbc_pixel_format_is_valid(con=
st
> struct intel_plane_state *p
>  	}
>  }
>=20
> +bool
> +intel_fbc_is_enable_pixel_normalizer(const struct intel_plane_state
> +*plane_state) {
> +	struct intel_display *display =3D to_intel_display(plane_state);
> +
> +	return DISPLAY_VER(display) >=3D 35 &&
> +	       xe3p_lpd_fbc_fp16_format_is_valid(plane_state);
> +}
> +
>  static bool pixel_format_is_valid(const struct intel_plane_state *plane_=
state)  {
>  	struct intel_display *display =3D to_intel_display(plane_state->uapi.pl=
ane-
> >dev);
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.h
> b/drivers/gpu/drm/i915/display/intel_fbc.h
> index c86562404a00..91424563206a 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.h
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.h
> @@ -53,5 +53,7 @@ void intel_fbc_prepare_dirty_rect(struct intel_atomic_s=
tate
> *state,
>  				  struct intel_crtc *crtc);
>  void intel_fbc_dirty_rect_update_noarm(struct intel_dsb *dsb,
>  				       struct intel_plane *plane);
> +bool
> +intel_fbc_is_enable_pixel_normalizer(const struct intel_plane_state
> +*plane_state);
>=20
>  #endif /* __INTEL_FBC_H__ */
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index 0319174adf95..07d9c10cb2ce 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -463,6 +463,23 @@ static int skl_plane_max_height(const struct
> drm_framebuffer *fb,
>  	return 4096;
>  }
>=20
> +static enum intel_fbc_id skl_fbc_id_for_pipe(enum pipe pipe) {
> +	return pipe - PIPE_A + INTEL_FBC_A;
> +}
> +
> +static bool skl_plane_has_fbc(struct intel_display *display,
> +			      enum intel_fbc_id fbc_id, enum plane_id plane_id) {
> +	if ((DISPLAY_RUNTIME_INFO(display)->fbc_mask & BIT(fbc_id)) =3D=3D 0)
> +		return false;
> +
> +	if (DISPLAY_VER(display) >=3D 20)
> +		return icl_is_hdr_plane(display, plane_id);
> +	else
> +		return plane_id =3D=3D PLANE_1;
> +}
> +
>  static int icl_plane_max_height(const struct drm_framebuffer *fb,
>  				int color_plane,
>  				unsigned int rotation)
> @@ -898,6 +915,25 @@ static void icl_plane_disable_sel_fetch_arm(struct
> intel_dsb *dsb,
>  	intel_de_write_dsb(display, dsb, SEL_FETCH_PLANE_CTL(pipe, plane-
> >id), 0);  }
>=20
> +static void x3p_lpd_plane_update_pixel_normalizer(struct intel_dsb *dsb,
> +						  struct intel_plane *plane,
> +						  bool enable)
> +{
> +	struct intel_display *display =3D to_intel_display(plane);
> +	enum intel_fbc_id fbc_id =3D skl_fbc_id_for_pipe(plane->pipe);
> +	u32 val;
> +
> +	/* Only HDR planes have pixel normalizer and don't matter if no FBC */
> +	if (!skl_plane_has_fbc(display, fbc_id, plane->id))
> +		return;
> +
> +	val =3D enable ?
> PLANE_PIXEL_NORMALIZE_NORM_FACTOR(PLANE_PIXEL_NORMALIZE_NO
> RM_FACTOR_1_0) |
> +		       PLANE_PIXEL_NORMALIZE_ENABLE : 0;
> +
> +	intel_de_write_dsb(display, dsb,
> +			   PLANE_PIXEL_NORMALIZE(plane->pipe, plane->id),
> val); }
> +
>  static void
>  icl_plane_disable_arm(struct intel_dsb *dsb,
>  		      struct intel_plane *plane,
> @@ -913,6 +949,10 @@ icl_plane_disable_arm(struct intel_dsb *dsb,
>  	skl_write_plane_wm(dsb, plane, crtc_state);
>=20
>  	icl_plane_disable_sel_fetch_arm(dsb, plane, crtc_state);
> +
> +	if (DISPLAY_VER(display) >=3D 35)
> +		x3p_lpd_plane_update_pixel_normalizer(dsb, plane, false);
> +
>  	intel_de_write_dsb(display, dsb, PLANE_CTL(pipe, plane_id), 0);
>  	intel_de_write_dsb(display, dsb, PLANE_SURF(pipe, plane_id), 0);  } @@
> -1642,6 +1682,14 @@ icl_plane_update_arm(struct intel_dsb *dsb,
>=20
>  	icl_plane_update_sel_fetch_arm(dsb, plane, crtc_state, plane_state);
>=20
> +	/*
> +	 * In order to have FBC for fp16 formats pixel normalizer block must be
> +	 * active. Check if pixel normalizer block need to be enabled for FBC.
> +	 * If needed, use normalization factor as 1.0 and enable the block.
> +	 */
> +	if (intel_fbc_is_enable_pixel_normalizer(plane_state))
> +		x3p_lpd_plane_update_pixel_normalizer(dsb, plane, true);
> +
>  	/*
>  	 * The control register self-arms if the plane was previously
>  	 * disabled. Try to make the plane enable atomic by writing @@ -2404,23
> +2452,6 @@ void icl_link_nv12_planes(struct intel_plane_state *uv_plane_s=
tate,
>  	}
>  }
>=20
> -static enum intel_fbc_id skl_fbc_id_for_pipe(enum pipe pipe) -{
> -	return pipe - PIPE_A + INTEL_FBC_A;
> -}
> -
> -static bool skl_plane_has_fbc(struct intel_display *display,
> -			      enum intel_fbc_id fbc_id, enum plane_id plane_id)
> -{
> -	if ((DISPLAY_RUNTIME_INFO(display)->fbc_mask & BIT(fbc_id)) =3D=3D 0)
> -		return false;
> -
> -	if (DISPLAY_VER(display) >=3D 20)
> -		return icl_is_hdr_plane(display, plane_id);
> -	else
> -		return plane_id =3D=3D PLANE_1;
> -}
> -
>  static struct intel_fbc *skl_plane_fbc(struct intel_display *display,
>  				       enum pipe pipe, enum plane_id plane_id)  {
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
> b/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
> index ca9fdfbbe57c..7c944d3ca855 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
> @@ -455,4 +455,16 @@
>=20
> 	_SEL_FETCH_PLANE_OFFSET_5_A,
> _SEL_FETCH_PLANE_OFFSET_5_B, \
>=20
> 	_SEL_FETCH_PLANE_OFFSET_6_A,
> _SEL_FETCH_PLANE_OFFSET_6_B)
>=20
> +#define _PLANE_PIXEL_NORMALIZE_1_A		0x701a8
> +#define _PLANE_PIXEL_NORMALIZE_2_A		0x702a8
> +#define _PLANE_PIXEL_NORMALIZE_1_B		0x711a8
> +#define _PLANE_PIXEL_NORMALIZE_2_B		0x712a8
> +#define PLANE_PIXEL_NORMALIZE(pipe, plane)
> 	_MMIO_SKL_PLANE((pipe), (plane), \
> +
> 	_PLANE_PIXEL_NORMALIZE_1_A, _PLANE_PIXEL_NORMALIZE_1_B, \
> +
> 	_PLANE_PIXEL_NORMALIZE_2_A, _PLANE_PIXEL_NORMALIZE_2_B)
> +#define   PLANE_PIXEL_NORMALIZE_ENABLE
> 	REG_BIT(31)
> +#define   PLANE_PIXEL_NORMALIZE_NORM_FACTOR_MASK
> 	REG_GENMASK(15, 0)
> +#define   PLANE_PIXEL_NORMALIZE_NORM_FACTOR(val)
> 	REG_FIELD_PREP(PLANE_PIXEL_NORMALIZE_NORM_FACTOR_MAS
> K, (val))
> +#define   PLANE_PIXEL_NORMALIZE_NORM_FACTOR_1_0		0x3c00
> +
>  #endif /* __SKL_UNIVERSAL_PLANE_REGS_H__ */
> --
> 2.43.0

